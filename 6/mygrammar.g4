grammar mygrammar;

prog: classDef;

classDef: CLASS ID LBRACE fnDef RBRACE;

fnDef: type ID LPAREN ID RPAREN LBRACE expr RBRACE;

type: INT;

expr: ID EQ expr SEMICOLON
| NUM
;

CLASS: 'class';
LBRACE: '{';
RBRACE: '}';
LPAREN: '(';
RPAREN: ')';
EQ: '=';
SEMICOLON: ';';
INT:'int';


ID: [a-zA-Z][a-zA-Z0-9]*;
NUM: [0-9][0-9]*;

WS: [ \t\n\r]->skip;

