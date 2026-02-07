hanoi(1,Source,Destination,_) :-
    write('Move top disk from '), write(Source),
    write(' to '), write(Destination), nl.

hanoi(N,Source,Destination,Intermediate) :-
    N > 1,
    N1 is N - 1,
    hanoi(N1,Source,Intermediate,Destination),
    hanoi(1,Source,Destination,Intermediate),
    hanoi(N1,Intermediate,Destination,Source).
