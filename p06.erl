-module(p06).
-export([is_palindrome/1]).

is_palindrome(List) -> 
	is_palindrome(List, List, []).
is_palindrome([A1|B1], [], [A1|B2]) -> 
	is_palindrome(B1, [], B2);
is_palindrome(List, [A | B], Buffer) -> 
	is_palindrome(List, B, [A | Buffer]);
is_palindrome([], [], []) -> 
	true;
is_palindrome(_, [], _) -> 
	false.
