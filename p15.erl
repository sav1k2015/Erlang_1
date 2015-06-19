-module(p15).
-export([replicate/1]).

replicate(List, Kol) -> 
	replicate(List, Kol, Kol).
replicate([_H | T], Kol, 0) -> 
	replicate(T, Kol, Kol);
replicate([H | T], Kol, N) -> 
	[H | replicate([H | T], Kol, N-1)];
replicate([],_,_) -> 
	[].