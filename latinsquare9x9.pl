ls9x9(A1, A2, A3, A4, A5, A6, A7, A8, A9,
B1, B2, B3, B4, B5, B6, B7, B8, B9,
C1, C2, C3, C4, C5, C6, C7, C8, C9,
D1, D2, D3, D4, D5, D6, D7, D8, D9,
E1, E2, E3, E4, E5, E6, E7, E8, E9,
F1, F2, F3, F4, F5, F6, F7, F8, F9,
G1, G2, G3, G4, G5, G6, G7, G8, G9,
H1, H2, H3, H4, H5, H6, H7, H8, H9,
I1, I2, I3, I4, I5, I6, I7, I8, I9):-

s(A1, A2, A3, A4, A5, A6, A7, A8, A9,
B1, B2, B3, B4, B5, B6, B7, B8, B9,
C1, C2, C3, C4, C5, C6, C7, C8, C9,
D1, D2, D3, D4, D5, D6, D7, D8, D9,
E1, E2, E3, E4, E5, E6, E7, E8, E9,
F1, F2, F3, F4, F5, F6, F7, F8, F9,
G1, G2, G3, G4, G5, G6, G7, G8, G9,
H1, H2, H3, H4, H5, H6, H7, H8, H9,
I1, I2, I3, I4, I5, I6, I7, I8, I9),
nl, write('Latin Square 9x9'), nl,
printrow(A1,A2,A3,A4,A5,A6,A7,A8,A9),
printrow(B1,B2,B3,B4,B5,B6,B7,B8,B9),
printrow(C1,C2,C3,C4,C5,C6,C7,C8,C9),
printrow(D1,D2,D3,D4,D5,D6,D7,D8,D9),
printrow(E1,E2,E3,E4,E5,E6,E7,E8,E9),
printrow(F1,F2,F3,F4,F5,F6,F7,F8,F9),
printrow(G1,G2,G3,G4,G5,G6,G7,G8,G9),
printrow(H1,H2,H3,H4,H5,H6,H7,H8,H9),
printrow(I1,I2,I3,I4,I5,I6,I7,I8,I9).

printrow(A, B, C, D, E, F, G, H, I) :- write(' '), write(A), write(' '), write(B), write(' '), write(C), write(' '), write(D), write(' '), write(E), write(' '), write(F), write(' '), write(G), write(' '), write(H), write(' '), write(I), nl.

s(A1, A2, A3, A4, A5, A6, A7, A8, A9,
B1, B2, B3, B4, B5, B6, B7, B8, B9,
C1, C2, C3, C4, C5, C6, C7, C8, C9,
D1, D2, D3, D4, D5, D6, D7, D8, D9,
E1, E2, E3, E4, E5, E6, E7, E8, E9,
F1, F2, F3, F4, F5, F6, F7, F8, F9,
G1, G2, G3, G4, G5, G6, G7, G8, G9,
H1, H2, H3, H4, H5, H6, H7, H8, H9,
I1, I2, I3, I4, I5, I6, I7, I8, I9):-
uniq(A1,A2,A3,A4,A5,A6,A7,A8,A9),
uniq(B1,B2,B3,B4,B5,B6,B7,B8,B9),
uniq(C1,C2,C3,C4,C5,C6,C7,C8,C9),
uniq(D1,D2,D3,D4,D5,D6,D7,D8,D9),
uniq(E1,E2,E3,E4,E5,E6,E7,E8,E9),
uniq(F1,F2,F3,F4,F5,F6,F7,F8,F9),
uniq(G1,G2,G3,G4,G5,G6,G7,G8,G9),
uniq(H1,H2,H3,H4,H5,H6,H7,H8,H9),
uniq(I1,I2,I3,I4,I5,I6,I7,I8,I9),
uniq(A1,B1,C1,D1,E1,F1,G1,H1,I1),
uniq(A2,B2,C2,D2,E2,F2,G2,H2,I2),
uniq(A3,B3,C3,D3,E3,F3,G3,H3,I3),
uniq(A4,B4,C4,D4,E4,F4,G4,H4,I4),
uniq(A5,B5,C5,D5,E5,F5,G5,H5,I5),
uniq(A6,B6,C6,D6,E6,F6,G6,H6,I6),
uniq(A7,B7,C7,D7,E7,F7,G7,H7,I7),
uniq(A8,B8,C8,D8,E8,F8,G8,H8,I8),
uniq(A9,B9,C9,D9,E9,F9,G9,H9,I9).

uniq(A, B, C, D, E, F, G, H, I):- letra(A), letra(B), letra(C), letra(D), letra(E), letra(F), letra(G), letra(H), letra(I),  \+ A=B, \+ A=C, \+ A=D, \+ A=E, \+ A=F, \+ A=G, \+ A=H, \+ A=I, \+ B=C, \+ B=D, \+ B=E, \+ B=F, \+ B=G, \+ B=H, \+ B=I, \+ C=D, \+ C=E, \+ C=F, \+ C=G, \+ C=H, \+ C=I, \+ D=E, \+ D=F, \+ D=G, \+ D=H, \+ D=I, \+ E=F, \+ E=G, \+ E=H, \+ E=I, \+ F=G, \+ F=H, \+ F=I, \+ G=H, \+ G=I, \+ H=I.
letra(1). letra(2). letra(3). letra(4). letra(5). letra(6). letra(7). letra(8). letra(9). 

run :-
statistics(walltime, [TimeSinceStart | [TimeSinceLastCall]]),
tell('9x9_output.txt'),
(
	ls9x9(1,2,3,4,5,6,7,8,9,
		  2,5,_,_,_,_,_,_,_,
		  3,_,_,_,_,_,_,_,_,
		  4,_,_,_,_,_,_,_,_,
		  5,_,_,_,_,_,_,_,_,
		  6,_,_,_,_,_,_,_,_,
		  7,_,_,_,_,_,_,_,_,
		  8,_,_,_,_,_,_,_,_,
		  9,_,_,_,_,_,_,_,_),
	fail;
	told
),
statistics(walltime, [NewTimeSinceStart | [ExecutionTime]]),
nl, write('Tempo: '), write(ExecutionTime), write(' ms.'), nl.