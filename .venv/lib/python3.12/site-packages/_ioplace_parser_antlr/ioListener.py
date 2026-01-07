# Generated from io.g by ANTLR 4.10.1
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .ioParser import ioParser
else:
    from ioParser import ioParser

# This class defines a complete listener for a parse tree produced by ioParser.
class ioListener(ParseTreeListener):

    # Enter a parse tree produced by ioParser#top.
    def enterTop(self, ctx:ioParser.TopContext):
        pass

    # Exit a parse tree produced by ioParser#top.
    def exitTop(self, ctx:ioParser.TopContext):
        pass


    # Enter a parse tree produced by ioParser#directive.
    def enterDirective(self, ctx:ioParser.DirectiveContext):
        pass

    # Exit a parse tree produced by ioParser#directive.
    def exitDirective(self, ctx:ioParser.DirectiveContext):
        pass


    # Enter a parse tree produced by ioParser#annotation.
    def enterAnnotation(self, ctx:ioParser.AnnotationContext):
        pass

    # Exit a parse tree produced by ioParser#annotation.
    def exitAnnotation(self, ctx:ioParser.AnnotationContext):
        pass


    # Enter a parse tree produced by ioParser#direction.
    def enterDirection(self, ctx:ioParser.DirectionContext):
        pass

    # Exit a parse tree produced by ioParser#direction.
    def exitDirection(self, ctx:ioParser.DirectionContext):
        pass


    # Enter a parse tree produced by ioParser#regex.
    def enterRegex(self, ctx:ioParser.RegexContext):
        pass

    # Exit a parse tree produced by ioParser#regex.
    def exitRegex(self, ctx:ioParser.RegexContext):
        pass


    # Enter a parse tree produced by ioParser#virtualPin.
    def enterVirtualPin(self, ctx:ioParser.VirtualPinContext):
        pass

    # Exit a parse tree produced by ioParser#virtualPin.
    def exitVirtualPin(self, ctx:ioParser.VirtualPinContext):
        pass



del ioParser