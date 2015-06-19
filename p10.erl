-module(p10).
-export([encode/1]).

encode(List) -> 
    encode(List, 1).
encode([], _) -> 
    [];
encode([H, H | T], Kol) -> 
    encode([H | T], Kol + 1);
encode([H | T], Kol) -> 
    [{Kol, H} | encode(T, 1)].