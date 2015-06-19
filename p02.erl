-module (p02).
-export ([butlast/1]).

butlast([_H,_B|[]]=L) -> 
	L;

butlast([_H|B]) -> 
	butlast(B).


