gcd(X, 0, X).
gcd(X, Y, G) :-
    R is X mod Y,
    gcd(Y, R, G).
