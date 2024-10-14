grammar mygrammar;

prog: start+;

start: NUM;

NUM: [1-9][0-9]*;

WS: [ \t\n\r]-> skip;
