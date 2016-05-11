ls8x8(
A1, A2, A3, A4, A5, A6, A7, A8,
B1, B2, B3, B4, B5, B6, B7, B8,
C1, C2, C3, C4, C5, C6, C7, C8,
D1, D2, D3, D4, D5, D6, D7, D8,
E1, E2, E3, E4, E5, E6, E7, E8,
F1, F2, F3, F4, F5, F6, F7, F8,
G1, G2, G3, G4, G5, G6, G7, G8,
H1, H2, H3, H4, H5, H6, H7, H8):-

s(A1, A2, A3, A4, A5, A6, A7, A8,
B1, B2, B3, B4, B5, B6, B7, B8,
C1, C2, C3, C4, C5, C6, C7, C8,
D1, D2, D3, D4, D5, D6, D7, D8,
E1, E2, E3, E4, E5, E6, E7, E8,
F1, F2, F3, F4, F5, F6, F7, F8,
G1, G2, G3, G4, G5, G6, G7, G8,
H1, H2, H3, H4, H5, H6, H7, H8),
nl, write('Latin Square 8x8'), nl,
printrow(A1,A2,A3,A4,A5,A6,A7,A8),
printrow(B1,B2,B3,B4,B5,B6,B7,B8),
printrow(C1,C2,C3,C4,C5,C6,C7,C8),
printrow(D1,D2,D3,D4,D5,D6,D7,D8),
printrow(E1,E2,E3,E4,E5,E6,E7,E8),
printrow(F1,F2,F3,F4,F5,F6,F7,F8),
printrow(G1,G2,G3,G4,G5,G6,G7,G8),
printrow(H1,H2,H3,H4,H5,H6,H7,H8).

printrow(A, B, C, D, E, F, G, H) :- write(' '), write(A), write(' '), write(B), write(' '), write(C), write(' '), write(D), write(' '), write(E), write(' '), write(F), write(' '), write(G), write(' '), write(H), nl.

s(A1, A2, A3, A4, A5, A6, A7, A8,
B1, B2, B3, B4, B5, B6, B7, B8,
C1, C2, C3, C4, C5, C6, C7, C8,
D1, D2, D3, D4, D5, D6, D7, D8,
E1, E2, E3, E4, E5, E6, E7, E8,
F1, F2, F3, F4, F5, F6, F7, F8,
G1, G2, G3, G4, G5, G6, G7, G8,
H1, H2, H3, H4, H5, H6, H7, H8):-
uniq(A1,A2,A3,A4,A5,A6,A7,A8),
uniq(B1,B2,B3,B4,B5,B6,B7,B8),
uniq(C1,C2,C3,C4,C5,C6,C7,C8),
uniq(D1,D2,D3,D4,D5,D6,D7,D8),
uniq(E1,E2,E3,E4,E5,E6,E7,E8),
uniq(F1,F2,F3,F4,F5,F6,F7,F8),
uniq(G1,G2,G3,G4,G5,G6,G7,G8),
uniq(H1,H2,H3,H4,H5,H6,H7,H8),
uniq(A1,B1,C1,D1,E1,F1,G1,H1),
uniq(A2,B2,C2,D2,E2,F2,G2,H2),
uniq(A3,B3,C3,D3,E3,F3,G3,H3),
uniq(A4,B4,C4,D4,E4,F4,G4,H4),
uniq(A5,B5,C5,D5,E5,F5,G5,H5),
uniq(A6,B6,C6,D6,E6,F6,G6,H6),
uniq(A7,B7,C7,D7,E7,F7,G7,H7),
uniq(A8,B8,C8,D8,E8,F8,G8,H8).

uniq(A, B, C, D, E, F, G, H):- letra(A), letra(B), letra(C), letra(D), letra(E), letra(F), letra(G), letra(H),  \+ A=B, \+ A=C, \+ A=D, \+ A=E, \+ A=F, \+ A=G, \+ A=H, \+ B=C, \+ B=D, \+ B=E, \+ B=F, \+ B=G, \+ B=H, \+ C=D, \+ C=E, \+ C=F, \+ C=G, \+ C=H, \+ D=E, \+ D=F, \+ D=G, \+ D=H, \+ E=F, \+ E=G, \+ E=H, \+ F=G, \+ F=H, \+ G=H.
letra(1). letra(2). letra(3). letra(4). letra(5). letra(6). letra(7). letra(8). 

run :-
statistics(walltime, [TimeSinceStart | [TimeSinceLastCall]]),
tell('8x8_output.txt'),
(
	ls8x8(1,2,3,4,5,6,7,8,
		  2,5,_,_,_,_,_,_,
		  3,_,_,_,_,_,_,_,
		  4,_,_,_,_,_,_,_,
		  5,_,_,_,_,_,_,_,
		  6,_,_,_,_,_,_,_,
		  7,_,_,_,_,_,_,_,
		  8,_,_,_,_,_,_,_),
	fail;
	told
),
statistics(walltime, [NewTimeSinceStart | [ExecutionTime]]),
nl, write('Tempo: '), write(ExecutionTime), write(' ms.'), nl.