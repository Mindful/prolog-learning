directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(fahlquemont,stAvold).
directTrain(stAvold,forbach).
directTrain(saarbruecken,dudweiler).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).

travelBetween(P1, P2) :- 
	directTrain(P1, P2).

travelBetween(P1, P2) :-
	directTrain(P2, P1).

travelBetween(P1, P2) :-
	directTrain(P2, X),
	travelBetween(X, P1).

travelBetween(P1, P2) :-
	directTrain(P1, X),
	travelBetween(X, P2). 