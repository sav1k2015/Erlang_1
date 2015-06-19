-module(p07_1).
-export([flatten/1]).

flatten([L]) -> 
    p05:reverse(flatten(L,[])).  
flatten([],Acc)->
    Acc;
flatten([[_|_] = H|T],Acc)->
    flatten(T,flatten(H,Acc));
flatten([[]|T],Acc)->
    flatten(T,Acc);
flatten ([H|T],Acc) ->
    flatten(T,[H|Acc]).
