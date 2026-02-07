/* ---------- Water Jug Problem ---------- */

/* Moves */

/* Fill jugs */
move(state(X,Y), state(4,Y)) :- X < 4.
move(state(X,Y), state(X,3)) :- Y < 3.

/* Empty jugs */
move(state(X,Y), state(0,Y)) :- X > 0.
move(state(X,Y), state(X,0)) :- Y > 0.

/* Pour A -> B */
move(state(X,Y), state(X1,Y1)) :-
    X > 0, Y < 3,
    T is min(X, 3-Y),
    X1 is X - T,
    Y1 is Y + T.

/* Pour B -> A */
move(state(X,Y), state(X1,Y1)) :-
    Y > 0, X < 4,
    T is min(Y, 4-X),
    X1 is X + T,
    Y1 is Y - T.


/* ---------- DFS Search ---------- */

/* Base case: goal reached */
solve(State, Goal, _, [State]) :-
    State = Goal.

/* Recursive DFS */
solve(State, Goal, Visited, [State|Path]) :-
    move(State, Next),
    \+ member(Next, Visited),
    solve(Next, Goal, [Next|Visited], Path).
