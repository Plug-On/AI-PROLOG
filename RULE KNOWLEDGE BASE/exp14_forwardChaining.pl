:- dynamic symptom/1.

% Rule base
disease(flu) :-
    symptom(fever),
    symptom(cough).

disease(cold) :-
    symptom(cough).

% Ask user for symptoms
ask :-
    write('Do you have fever? (yes/no): '),
    read(F),
    ( F == yes -> assert(symptom(fever)) ; true ),

    write('Do you have cough? (yes/no): '),
    read(C),
    ( C == yes -> assert(symptom(cough)) ; true ).

% Diagnosis
diagnose :-
    disease(X),
    write('You may have: '),
    write(X),
    nl.

diagnose :-
    \+ disease(_),
    write('No disease detected.'),
    nl.
