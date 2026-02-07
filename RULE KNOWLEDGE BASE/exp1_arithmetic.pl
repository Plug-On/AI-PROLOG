calc(A,B,S,D,P,Q) :-
    S is A+B,
    D is A-B,
    P is A*B,
    B =\= 0,
    Q is A/B.