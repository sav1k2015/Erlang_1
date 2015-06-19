-module(p13).
-export([decode/1]).

decode([]) -> 
    [];
decode([{0, Str} | T]) -> 
	decode(T);
decode([{Kol, Str} | T]) -> 
	[Str | decode([{Kol-1, Str} | T])].