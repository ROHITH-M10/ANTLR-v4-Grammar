grammar mygrammar;

prog: fnDef;

fnDef: type ID LPAREN RPAREN LBRACE start+ RBRACE;

type: INT;

start:
	declare
|	assign
| 	forLoop
|	pri
|	ret
;

declare: type ID (COMMA assign)* SEMICOLON;

assign: ID (EQ|PE) expr SEMICOLON?;

forLoop: FOR LPAREN forAssign SEMICOLON expr SEMICOLON expr RPAREN LBRACE start+ RBRACE;

pri: PRINTF LPAREN STRING COMMA ID RPAREN SEMICOLON;

ret: RETURN NUM SEMICOLON;

forAssign: ID EQ NUM;

expr: NUM
| ID
| expr PE expr
| expr LE expr
| expr PP expr
| ID PP
;

LPAREN: '(';
RPAREN: ')';
LBRACE: '{';
RBRACE: '}';
COMMA: ',';
EQ: '=';
PE: '+=';
LE: '<=';
PP: '++';
SEMICOLON: ';';
RETURN: 'return';
PRINTF: 'printf';
FOR: 'for';

INT: 'int';

ID : [a-zA-Z_][A-Za-z0-9_]*;
NUM: [0-9]+;
STRING: '"'.*?'"';

WS: [ \t\n\r]-> skip;
COMMENT: '/*'.*? '*/' -> skip;
 