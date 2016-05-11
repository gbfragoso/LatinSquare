ls7x7(
A1, A2, A3, A4, A5, A6, A7,
B1, B2, B3, B4, B5, B6, B7,
C1, C2, C3, C4, C5, C6, C7,
D1, D2, D3, D4, D5, D6, D7,
E1, E2, E3, E4, E5, E6, E7,
F1, F2, F3, F4, F5, F6, F7,
G1, G2, G3, G4, G5, G6, G7):-

s(A1, A2, A3, A4, A5, A6, A7,
B1, B2, B3, B4, B5, B6, B7,
C1, C2, C3, C4, C5, C6, C7,
D1, D2, D3, D4, D5, D6, D7, 
E1, E2, E3, E4, E5, E6, E7, 
F1, F2, F3, F4, F5, F6, F7, 
G1, G2, G3, G4, G5, G6, G7),
nl, write('Latin Square 7x7'), nl,
printrow(A1,A2,A3,A4,A5,A6,A7),
printrow(B1,B2,B3,B4,B5,B6,B7),
printrow(C1,C2,C3,C4,C5,C6,C7),
printrow(D1,D2,D3,D4,D5,D6,D7),
printrow(E1,E2,E3,E4,E5,E6,E7),
printrow(F1,F2,F3,F4,F5,F6,F7),
printrow(G1,G2,G3,G4,G5,G6,G7).

printrow(A, B, C, D, E, F, G) :- write(' '), write(A), write(' '), write(B), write(' '), write(C), write(' '), write(D), write(' '), write(E), write(' '), write(F), write(' '), write(G), nl.

s(A1, A2, A3, A4, A5, A6, A7,
B1, B2, B3, B4, B5, B6, B7,
C1, C2, C3, C4, C5, C6, C7,
D1, D2, D3, D4, D5, D6, D7,
E1, E2, E3, E4, E5, E6, E7, 
F1, F2, F3, F4, F5, F6, F7, 
G1, G2, G3, G4, G5, G6, G7):-
uniq(A1,A2,A3,A4,A5,A6,A7),
uniq(B1,B2,B3,B4,B5,B6,B7),
uniq(C1,C2,C3,C4,C5,C6,C7),
uniq(D1,D2,D3,D4,D5,D6,D7),
uniq(E1,E2,E3,E4,E5,E6,E7),
uniq(F1,F2,F3,F4,F5,F6,F7),
uniq(G1,G2,G3,G4,G5,G6,G7),
uniq(A1,B1,C1,D1,E1,F1,G1),
uniq(A2,B2,C2,D2,E2,F2,G2),
uniq(A3,B3,C3,D3,E3,F3,G3),
uniq(A4,B4,C4,D4,E4,F4,G4),
uniq(A5,B5,C5,D5,E5,F5,G5),
uniq(A6,B6,C6,D6,E6,F6,G6),
uniq(A7,B7,C7,D7,E7,F7,G7).

uniq(A, B, C, D, E, F, G):- letra(A), letra(B), letra(C), letra(D), letra(E), letra(F), letra(G),  \+ A=B, \+ A=C, \+ A=D, \+ A=E, \+ A=F, \+ A=G, \+ B=C, \+ B=D, \+ B=E, \+ B=F, \+ B=G, \+ C=D, \+ C=E, \+ C=F, \+ C=G, \+ D=E, \+ D=F, \+ D=G, \+ E=F, \+ E=G, \+ F=G.
letra(1). letra(2). letra(3). letra(4). letra(5). letra(6). letra(7). 

run :-
statistics(walltime, [TimeSinceStart | [TimeSinceLastCall]]),
tell('7x7_output.txt'),
(
	ls7x7(1,2,3,4,5,6,7,
		  2,5,_,_,_,_,_,
		  3,_,_,_,_,_,_,
		  4,_,_,_,_,_,_,
		  5,_,_,_,_,_,_,
		  6,_,_,_,_,_,_,
		  7,_,_,_,_,_,_),
	fail;
	told
),
statistics(walltime, [NewTimeSinceStart | [ExecutionTime]]),
nl, write('Tempo: '), write(ExecutionTime), write(' ms.'), nl.