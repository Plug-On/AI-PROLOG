% ----- Basic facts -----
male(ram).
male(shyam).
male(amit).

female(sita).
female(gita).

% ----- Parent facts -----
parent(ram, shyam).
parent(sita, shyam).

parent(ram, gita).
parent(sita, gita).

parent(shyam, amit).

% ----- Sibling facts -----
brother(shyam, gita).
sister(gita, shyam).

% ----- Rules -----
father(X,Y) :- male(X), parent(X,Y).
mother(X,Y) :- female(X), parent(X,Y).

son(X,Y) :- male(X), parent(Y,X).
daughter(X,Y) :- female(X), parent(Y,X).

grandfather(X,Y) :-
    male(X),
    parent(X,Z),
    parent(Z,Y).

uncle(X,Y) :-
    male(X),
    brother(X,Z),
    parent(Z,Y).

aunt(X,Y) :-
    female(X),
    sister(X,Z),
    parent(Z,Y).

ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :-
    parent(X,Z),
    ancestor(Z,Y).
