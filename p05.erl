-module(p05).
-export([reverse/1]).

reverse(List) -> reverse 
	(List,[]).
reverse([],Buffer) -> 
	Buffer;
reverse([H | T], Buffer) -> 
	reverse(T, [H|Buffer]).
