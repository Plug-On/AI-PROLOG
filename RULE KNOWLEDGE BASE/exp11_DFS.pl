/* -------- Knowledge Base -------- */

edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(e, g).

/* -------- Depth First Search -------- */

dfs(Start, Goal) :-
    dfs(Start, Goal, [Start]).

dfs(Node, Node, _) :-
    write('Reached: '), write(Node), nl.

dfs(Node, Goal, Visited) :-
    edge(Node, Next),
    \+ member(Next, Visited),
    write(Node), write(' -> '), write(Next), nl,
    dfs(Next, Goal, [Next | Visited]).
