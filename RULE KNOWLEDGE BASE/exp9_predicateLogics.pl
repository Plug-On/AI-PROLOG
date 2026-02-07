likes(mary, food).
likes(mary, wine).
likes(john, wine).
likes(john, mary).
likes(ram, pizza).
likes(ram, cola).
likes(ram, tea).
likes(rita, pizza).
likes(rita, tea).
likes(rita, coffee).
likes(robin, rita).
likes(robin, pizza).
likes(kamal, pizza).
likes(kamal, coffee).

likes(ram, X) :- likes(rita, X).
likes(ram, Y) :- likes(Y, pizza).
likes(ram, Z) :- likes(Z, Z).
