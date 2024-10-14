grammar new3;

prog: start+;

start: whi;

whi: WHILE LPRAEN expr RPAREN LBRAC assign+ RBRAC;


expr: ID
| NUM
| expr LT expr
| expr ADD expr
;

assign: ID PP SEMICOLON
|  ID EQ expr SEMICOLON
;

WHILE: 'while';
LPRAEN: '(';
RPAREN: ')';
LBRAC: '{';
RBRAC: '}';
LT:'<';
ADD: '+';
EQ: '=';
PP: '++';
SEMICOLON: ';';

NUM: [0-9]+;
ID: [a-zA-Z_][a-zA-Z_0-9]*;

WS: [ \t\n\r]+ -> skip;
