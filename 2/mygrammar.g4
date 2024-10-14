grammar mygrammar;

prog : start+;

start: 
	ifCase
|	assignValue
|	whileBlock
;
ifCase: IF LPAREN expr RPAREN LBRACE start+ RBRACE elseBlock? ;

assignValue: ID ASSIGN expr SEMICOLON;

whileBlock : WHILE LPAREN expr RPAREN LBRACE start+ RBRACE;

expr:
	ID
|	NUM
|	expr GT expr
|	expr LT expr
|	expr ASSIGN expr
|	expr SUB expr
|	expr ADD expr
;

elseBlock: ELSE LBRACE start+ RBRACE;


IF: 'if';
LPAREN: '(';
RPAREN: ')';
LBRACE: '{';
RBRACE: '}';
ASSIGN: '=';
SEMICOLON: ';';
GT: '>';
LT: '<';
SUB: '-';
ADD: '+';
WHILE: 'while';
ELSE: 'else';



ID : [a-zA-Z_][a-zA-Z0-9_]*;
NUM: [0-9]+;

WS: [ \t\r\n]+ ->skip;



