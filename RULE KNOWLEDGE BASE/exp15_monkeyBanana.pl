% ---------- Positions ----------
place(atdoor).
place(atwindow).
place(middle).

% ---------- Initial State ----------
initial_state(state(atdoor, atwindow, no, no)).

% ---------- Goal ----------
goal_state(state(_, _, _, yes)).

% ---------- Actions ----------

% Move monkey between places
action(move(X, Y),
       state(X, Box, OnBox, Banana),
       state(Y, Box, OnBox, Banana)) :-
    place(X),
    place(Y),
    X \= Y.

% Push box to middle
action(push(BoxPos, middle),
       state(BoxPos, BoxPos, no, Banana),
       state(middle, middle, no, Banana)).

% Climb box
action(climb,
       state(Pos, Pos, no, Banana),
       state(Pos, Pos, yes, Banana)).

% Grab banana
action(grab,
       state(middle, middle, yes, no),
       state(middle, middle, yes, yes)).

% ---------- Solver ----------
solve(State, _, []) :-
    goal_state(State).

solve(State, Visited, [Action|Plan]) :-
    action(Action, State, NewState),
    \+ member(NewState, Visited),
    solve(NewState, [NewState|Visited], Plan).

% ---------- Run ----------
run_monkey_banana :-
    initial_state(S),
    solve(S, [S], Plan),
    print_plan(Plan).

print_plan([]).
print_plan([H|T]) :-
    write(H), nl,
    print_plan(T).
