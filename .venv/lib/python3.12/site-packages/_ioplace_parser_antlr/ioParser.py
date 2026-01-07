# Generated from io.g by ANTLR 4.10.1
# encoding: utf-8
from antlr4 import *
from io import StringIO
import sys
if sys.version_info[1] > 5:
	from typing import TextIO
else:
	from typing.io import TextIO

def serializedATN():
    return [
        4,1,10,41,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,1,0,5,
        0,14,8,0,10,0,12,0,17,9,0,1,0,1,0,1,1,1,1,1,1,1,1,3,1,25,8,1,1,2,
        1,2,1,2,1,2,3,2,31,8,2,1,3,1,3,1,3,1,4,1,4,1,5,1,5,1,5,1,5,0,0,6,
        0,2,4,6,8,10,0,2,1,0,3,4,2,0,5,5,9,9,39,0,15,1,0,0,0,2,24,1,0,0,
        0,4,26,1,0,0,0,6,32,1,0,0,0,8,35,1,0,0,0,10,37,1,0,0,0,12,14,3,2,
        1,0,13,12,1,0,0,0,14,17,1,0,0,0,15,13,1,0,0,0,15,16,1,0,0,0,16,18,
        1,0,0,0,17,15,1,0,0,0,18,19,5,0,0,1,19,1,1,0,0,0,20,25,3,4,2,0,21,
        25,3,6,3,0,22,25,3,10,5,0,23,25,3,8,4,0,24,20,1,0,0,0,24,21,1,0,
        0,0,24,22,1,0,0,0,24,23,1,0,0,0,25,3,1,0,0,0,26,27,5,6,0,0,27,30,
        5,5,0,0,28,29,5,8,0,0,29,31,7,0,0,0,30,28,1,0,0,0,30,31,1,0,0,0,
        31,5,1,0,0,0,32,33,5,7,0,0,33,34,5,2,0,0,34,7,1,0,0,0,35,36,7,1,
        0,0,36,9,1,0,0,0,37,38,5,10,0,0,38,39,5,3,0,0,39,11,1,0,0,0,3,15,
        24,30
    ]

class ioParser ( Parser ):

    grammarFileName = "io.g"

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]

    sharedContextCache = PredictionContextCache()

    literalNames = [ "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                     "<INVALID>", "<INVALID>", "'@'", "'#'", "'='", "<INVALID>", 
                     "'$'" ]

    symbolicNames = [ "<INVALID>", "Ws", "Direction", "Integer", "Float", 
                      "Identifier", "At", "Hash", "Equal", "Regex", "Dollar" ]

    RULE_top = 0
    RULE_directive = 1
    RULE_annotation = 2
    RULE_direction = 3
    RULE_regex = 4
    RULE_virtualPin = 5

    ruleNames =  [ "top", "directive", "annotation", "direction", "regex", 
                   "virtualPin" ]

    EOF = Token.EOF
    Ws=1
    Direction=2
    Integer=3
    Float=4
    Identifier=5
    At=6
    Hash=7
    Equal=8
    Regex=9
    Dollar=10

    def __init__(self, input:TokenStream, output:TextIO = sys.stdout):
        super().__init__(input, output)
        self.checkVersion("4.10.1")
        self._interp = ParserATNSimulator(self, self.atn, self.decisionsToDFA, self.sharedContextCache)
        self._predicates = None




    class TopContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def EOF(self):
            return self.getToken(ioParser.EOF, 0)

        def directive(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(ioParser.DirectiveContext)
            else:
                return self.getTypedRuleContext(ioParser.DirectiveContext,i)


        def getRuleIndex(self):
            return ioParser.RULE_top

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterTop" ):
                listener.enterTop(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitTop" ):
                listener.exitTop(self)




    def top(self):

        localctx = ioParser.TopContext(self, self._ctx, self.state)
        self.enterRule(localctx, 0, self.RULE_top)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 15
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while (((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << ioParser.Identifier) | (1 << ioParser.At) | (1 << ioParser.Hash) | (1 << ioParser.Regex) | (1 << ioParser.Dollar))) != 0):
                self.state = 12
                self.directive()
                self.state = 17
                self._errHandler.sync(self)
                _la = self._input.LA(1)

            self.state = 18
            self.match(ioParser.EOF)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class DirectiveContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def annotation(self):
            return self.getTypedRuleContext(ioParser.AnnotationContext,0)


        def direction(self):
            return self.getTypedRuleContext(ioParser.DirectionContext,0)


        def virtualPin(self):
            return self.getTypedRuleContext(ioParser.VirtualPinContext,0)


        def regex(self):
            return self.getTypedRuleContext(ioParser.RegexContext,0)


        def getRuleIndex(self):
            return ioParser.RULE_directive

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterDirective" ):
                listener.enterDirective(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitDirective" ):
                listener.exitDirective(self)




    def directive(self):

        localctx = ioParser.DirectiveContext(self, self._ctx, self.state)
        self.enterRule(localctx, 2, self.RULE_directive)
        try:
            self.state = 24
            self._errHandler.sync(self)
            token = self._input.LA(1)
            if token in [ioParser.At]:
                self.enterOuterAlt(localctx, 1)
                self.state = 20
                self.annotation()
                pass
            elif token in [ioParser.Hash]:
                self.enterOuterAlt(localctx, 2)
                self.state = 21
                self.direction()
                pass
            elif token in [ioParser.Dollar]:
                self.enterOuterAlt(localctx, 3)
                self.state = 22
                self.virtualPin()
                pass
            elif token in [ioParser.Identifier, ioParser.Regex]:
                self.enterOuterAlt(localctx, 4)
                self.state = 23
                self.regex()
                pass
            else:
                raise NoViableAltException(self)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class AnnotationContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def At(self):
            return self.getToken(ioParser.At, 0)

        def Identifier(self):
            return self.getToken(ioParser.Identifier, 0)

        def Equal(self):
            return self.getToken(ioParser.Equal, 0)

        def Float(self):
            return self.getToken(ioParser.Float, 0)

        def Integer(self):
            return self.getToken(ioParser.Integer, 0)

        def getRuleIndex(self):
            return ioParser.RULE_annotation

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterAnnotation" ):
                listener.enterAnnotation(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitAnnotation" ):
                listener.exitAnnotation(self)




    def annotation(self):

        localctx = ioParser.AnnotationContext(self, self._ctx, self.state)
        self.enterRule(localctx, 4, self.RULE_annotation)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 26
            self.match(ioParser.At)
            self.state = 27
            self.match(ioParser.Identifier)
            self.state = 30
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            if _la==ioParser.Equal:
                self.state = 28
                self.match(ioParser.Equal)
                self.state = 29
                _la = self._input.LA(1)
                if not(_la==ioParser.Integer or _la==ioParser.Float):
                    self._errHandler.recoverInline(self)
                else:
                    self._errHandler.reportMatch(self)
                    self.consume()


        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class DirectionContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Hash(self):
            return self.getToken(ioParser.Hash, 0)

        def Direction(self):
            return self.getToken(ioParser.Direction, 0)

        def getRuleIndex(self):
            return ioParser.RULE_direction

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterDirection" ):
                listener.enterDirection(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitDirection" ):
                listener.exitDirection(self)




    def direction(self):

        localctx = ioParser.DirectionContext(self, self._ctx, self.state)
        self.enterRule(localctx, 6, self.RULE_direction)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 32
            self.match(ioParser.Hash)
            self.state = 33
            self.match(ioParser.Direction)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class RegexContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Regex(self):
            return self.getToken(ioParser.Regex, 0)

        def Identifier(self):
            return self.getToken(ioParser.Identifier, 0)

        def getRuleIndex(self):
            return ioParser.RULE_regex

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterRegex" ):
                listener.enterRegex(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitRegex" ):
                listener.exitRegex(self)




    def regex(self):

        localctx = ioParser.RegexContext(self, self._ctx, self.state)
        self.enterRule(localctx, 8, self.RULE_regex)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 35
            _la = self._input.LA(1)
            if not(_la==ioParser.Identifier or _la==ioParser.Regex):
                self._errHandler.recoverInline(self)
            else:
                self._errHandler.reportMatch(self)
                self.consume()
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class VirtualPinContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Dollar(self):
            return self.getToken(ioParser.Dollar, 0)

        def Integer(self):
            return self.getToken(ioParser.Integer, 0)

        def getRuleIndex(self):
            return ioParser.RULE_virtualPin

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterVirtualPin" ):
                listener.enterVirtualPin(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitVirtualPin" ):
                listener.exitVirtualPin(self)




    def virtualPin(self):

        localctx = ioParser.VirtualPinContext(self, self._ctx, self.state)
        self.enterRule(localctx, 10, self.RULE_virtualPin)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 37
            self.match(ioParser.Dollar)
            self.state = 38
            self.match(ioParser.Integer)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx





