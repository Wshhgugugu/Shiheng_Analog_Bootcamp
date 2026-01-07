# Copyright 2020-2023 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
from enum import IntEnum
from typing import Literal, Optional, Dict, List, Union
from decimal import Decimal
import warnings

from dataclasses import dataclass, field

from _ioplace_parser_antlr.ioListener import ioListener  # type: ignore
from _ioplace_parser_antlr.ioParser import ioParser  # type: ignore
from _ioplace_parser_antlr.ioLexer import ioLexer  # type: ignore
from antlr4 import InputStream, CommonTokenStream, ParseTreeWalker  # type: ignore


class Order(IntEnum):
    busMajor = 0
    bitMajor = 1


@dataclass
class Side:
    min_distance: Optional[Decimal] = None
    reverse_result: bool = False
    pins: List[Union[str, int]] = field(default_factory=list)
    sort_mode: Optional[Order] = Order.busMajor


VALUE_ANNOTATIONS = ["min_distance"]
STANDALONE_ANNOTATIONS = [
    "bus_major",
    "bit_major",
]


class myListener(ioListener):
    sides: Dict[Literal["N", "E", "W", "S"], Side]
    current_side: Optional[Side] = None
    global_sort_mode: Order = Order.busMajor
    global_min_distance: Optional[Decimal] = None

    def __init__(self) -> None:
        super().__init__()
        self.sides = {}

    # def exitDirective(self, ctx: ioParser.DirectiveContext):
    #     for child in ctx.children:
    #         print(type(child), ctx_to_str(child))

    def exitDirection(self, ctx: ioParser.DirectiveContext):
        direction = str(ctx.children[1])
        if direction == "BUS_SORT":
            warnings.warn(
                "Specifying bit-major using the direction token ('#BUS_SORT') is deprecated: use @bit_major."
            )
            self.global_sort_mode = Order.bitMajor
        else:
            self.current_side = Side(
                min_distance=self.global_min_distance,
                reverse_result=len(direction) == 2,
                sort_mode=self.global_sort_mode,
            )
            side: Literal["N", "E", "W", "S"] = direction[0]  # type: ignore
            self.sides[side] = self.current_side

    def exitRegex(self, ctx: ioParser.RegexContext):
        if self.current_side is None:
            raise ValueError(
                f"identifier/regex {ctx.children[0]} requires a direction to be set first"
            )
        self.current_side.pins.append(str(ctx.children[0]))

    def exitVirtualPin(self, ctx: ioParser.VirtualPinContext):
        count = int(str(ctx.children[1]))
        if self.current_side is None:
            raise ValueError(
                f"virtual pin declaration ${count} requires a direction to be set first"
            )
        self.current_side.pins.append(count)

    def exitAnnotation(self, ctx: ioParser.AnnotationContext):
        annotation = str(ctx.children[1])
        if annotation in VALUE_ANNOTATIONS:
            if len(ctx.children) != 4:
                raise ValueError(f"Annotation {annotation} requires a value")
            if annotation == "min_distance":
                distance = Decimal(str(ctx.children[3]))
                if self.current_side is None:
                    self.global_min_distance = distance
                else:
                    self.current_side.min_distance = distance
        elif annotation in STANDALONE_ANNOTATIONS:
            if len(ctx.children) != 2:
                raise ValueError(f"Annotation {annotation} cannot be assigned a value")
            if annotation == "bus_major":
                if self.current_side is None:
                    self.global_sort_mode = Order.busMajor
                else:
                    self.current_side.sort_mode = Order.busMajor
            elif annotation == "bit_major":
                if self.current_side is None:
                    self.global_sort_mode = Order.bitMajor
                else:
                    self.current_side.sort_mode = Order.bitMajor
        else:
            raise ValueError(f"Unknown annotation {annotation}")

    def syntaxError(
        self, recognizer, offendingSymbol, line, charPositionInLine, msg, e
    ):
        raise ValueError(f"Syntax Error at {line}:{charPositionInLine}: {msg}")


def parse(string: str) -> Dict[Literal["N", "E", "W", "S"], Side]:
    """
    Parses a pin configuration into a dictionary of the four cardinal sides.

    :param string: The input configuration as a string (not a file path)
    :returns: A dictionary where each cardinal direction points to a Side object.
    :raises ValueError: On syntax or token recognition errors
    """
    listener = myListener()

    stream = InputStream(string)

    lexer = ioLexer(stream)
    lexer.addErrorListener(listener)

    token_stream = CommonTokenStream(lexer)

    parser = ioParser(token_stream)
    parser.addErrorListener(listener)

    tree = parser.top()

    ParseTreeWalker.DEFAULT.walk(listener, tree)

    sides_info = listener.sides
    sides: List[Literal["N", "E", "W", "S"]] = ["N", "E", "W", "S"]
    for side in sides:
        if side in sides_info:
            continue
        sides_info[side] = Side(
            min_distance=listener.global_min_distance,
            reverse_result=False,
            sort_mode=listener.global_sort_mode,
        )

    return sides_info
