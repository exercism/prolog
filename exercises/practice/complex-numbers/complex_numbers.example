real((R,_), R).
imaginary((_,I), I).

conjugate((R, I), (R, Ir)) :- Ir is 0-I.
abs((R,I), Rr) :- Rr is (R^2 + I^2)^(1/2).

add((Ra,Ia), (Rb,Ib), (Rr,Ir)) :- Rr is Ra+Rb, Ir is Ia+Ib.
sub((Ra,Ia), (Rb,Ib), (Rr,Ir)) :- Rr is Ra-Rb, Ir is Ia-Ib.

mul((Ra,Ia), (Rb,Ib), (Rr,Ir)) :-
  Rr is (Ra*Rb - Ia*Ib), Ir is (Ra*Ib + Ia*Rb).

div((Ra,Ia), (Rb,Ib), (Rr,Ir)) :-
  Y is (Rb^2 + Ib^2), Rr is (Ra*Rb + Ia*Ib)/Y, Ir is (Ia*Rb - Ra*Ib)/Y.
