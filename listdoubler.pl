member(X,[X|T]).
member(X,[H|T]) :- member(X,T).
/*Just here as examples from the book*/


twice([],[]).
twice([X|[]], [X|[X|[]]]).

/*Y is the tail of the first list, Z is the tail of the tail of the second list (2 elements back, basically) */
twice([X|Y], [X|[X|Z]]) :-
	twice(Y,Z).

