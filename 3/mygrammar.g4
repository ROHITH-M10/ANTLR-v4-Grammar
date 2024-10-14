grammar mygrammar;

prog: start+;

start: ifBlock
| whileBlock
| assignBlock
;

ifBlock: IF LPAREN expr RPAREN LBRACE start+ RBRACE ELSE LBRACE start+ RBRACE;


whileBlock: WHILE LPAREN expr RPAREN LBRACE start+ RBRACE;

assignBlock: ID EQ expr SEMICOLON;

expr:  expr LT expr
| expr GT expr
| expr ADD expr
| expr SUB expr
| NUM
| ID
;




IF: 'if';
ELSE: 'else';
WHILE: 'while';

LPAREN: '(';
LBRACE: '{';
RPAREN: ')';
RBRACE: '}';
SEMICOLON: ';';

EQ: '=';
LT: '<';
GT: '>';
ADD: '+';
SUB: '-';

ID: [a-zA-Z_][a-zA-Z0-9_]*;
NUM: [0-9]+;

WS: [ \t\n\r]+ -> skip;
COMMENT: '//'.*? ~[\n\r] -> skip;
