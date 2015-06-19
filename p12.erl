-module(p12).
-export([decodemodified/1]).

decodemodified(List) -> 
    decodemodified(List, 1).
decodemodified([], 1) -> 
    [];
decodemodified([{Kol, Str} | T], 1) -> 
    decodemodified([Str | T], Kol);
decodemodified([H | T], 1) -> 
    [H | decodemodified(T, 1)];
decodemodified([Str | T], Kol) -> 
    [Str | decodemodified([Str | T], Kol-1)].