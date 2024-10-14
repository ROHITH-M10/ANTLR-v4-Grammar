grammar mygrammar;

prog: start+;

start: assignVal;

assignVal: ID ASSIGN expr SEMICOLON
| ID ASSIGN LPAREN print COMMA expr RPAREN SEMICOLON
;

expr: expr ADD expr
| expr SUB expr
| expr MUL expr
| ID
| NUM
; 

print: 'print' LPAREN expr COMMA expr RPAREN;




ASSIGN: ':=';
ADD: '+';
SUB: '-';
MUL:'*';


LPAREN: '(';
COMMA: ',';
RPAREN: ')';
SEMICOLON: ';';


ID: [a-zA-Z_][a-zA-Z_0-9]*;
NUM: [0-9]+;

WS: [ \t\n\r]-> skip;
