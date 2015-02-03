numeral(0).
numeral(succ(X)) :- 
	numeral(X).

add(0, Y, Y).
add(succ(X),Y,succ(Z)) :-
	add(X,Y,Z).

/*
greater_than(0,X) :- false.
greater_than(X,0) :- true.
Couldn't get this working this way, because while these worked for > and <, the 0,0 case matches the true one - problematically.
I'm sure there's a better solution but I wanted to move on to other things so I looked up prolog's mathematical equality operator...
greater_than(X, Y) :-
	Y=:=0.
...which suffered from the same problem, X and Y match all kinds of things.

Finally solved below. Felt silly afterwards. The important thing is the limitation in the true clause that the left variable has a succ()
*/

/*greater_than(0,_) :- false.*/

greater_than(succ(_),0).
greater_than(succ(X), succ(Y)) :- 
	greater_than(X,Y).
