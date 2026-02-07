male(john).
female(mary).
parent(john, tom).
parent(mary, tom).

father(X,Y) :- male(X), parent(X,Y).
mother(X,Y) :- female(X), parent(X,Y).
