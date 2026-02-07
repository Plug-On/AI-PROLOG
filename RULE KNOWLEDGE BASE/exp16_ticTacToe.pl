% ---------- Winning positions ----------
win([X,X,X,_,_,_,_,_,_], X).
win([_,_,_,X,X,X,_,_,_], X).
win([_,_,_,_,_,_,X,X,X], X).
win([X,_,_,X,_,_,X,_,_], X).
win([_,X,_,_,X,_,_,X,_], X).
win([_,_,X,_,_,X,_,_,X], X).
win([X,_,_,_,X,_,_,_,X], X).
win([_,_,X,_,X,_,X,_,_], X).

% ---------- Winner check ----------
winner(Board, Player) :-
    win(Board, Player),
    write('Player '),
    write(Player),
    write(' wins the game!'),
    nl.
