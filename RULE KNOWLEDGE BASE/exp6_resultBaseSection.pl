result :-
    write('Section 1 Marks: '), read(M1),
    write('Section 2 Marks: '), read(M2),
    ( M1 > M2 -> write('Section 1 is Best')
    ; M2 > M1 -> write('Section 2 is Best')
    ; write('Both Sections are Equal')
    ).
