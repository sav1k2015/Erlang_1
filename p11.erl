-module(p11).
-export([encodemodified/1]).

encodemodified(List) -> 
    encodemodified(List, 1).
encodemodified([], _) -> 
    [];
encodemodified([H, H | T], Kol) -> 
    encodemodified([H | T], Kol + 1);
encodemodified([H | T], 1) -> 
    [ H | encode(T, 1)];
encodemodified([H | T], Kol) -> 
    [{Kol, H} | encodemodified(T, 1)].