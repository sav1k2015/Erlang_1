-module(p03).
-export([element_at/1]).

element_at([H|T],N)-> 
	element_at(T,N-1);
element_at([],N)-> 
	undefind.
