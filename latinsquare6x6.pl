ls6x6(
A1, A2, A3, A4, A5, A6,
B1, B2, B3, B4, B5, B6,
C1, C2, C3, C4, C5, C6,
D1, D2, D3, D4, D5, D6,
E1, E2, E3, E4, E5, E6,
F1, F2, F3, F4, F5, F6):-

s(A1, A2, A3, A4, A5, A6,
B1, B2, B3, B4, B5, B6,
C1, C2, C3, C4, C5, C6, 
D1, D2, D3, D4, D5, D6, 
E1, E2, E3, E4, E5, E6,
F1, F2, F3, F4, F5, F6),
nl, write('Latin Square 6x6'), nl,
printrow(A1,A2,A3,A4,A5,A6),
printrow(B1,B2,B3,B4,B5,B6),
printrow(C1,C2,C3,C4,C5,C6),
printrow(D1,D2,D3,D4,D5,D6),
printrow(E1,E2,E3,E4,E5,E6),
printrow(F1,F2,F3,F4,F5,F6).

printrow(A, B, C, D, E, F) :- write(' '), write(A), write(' '), write(B), write(' '), write(C), write(' '), write(D), write(' '), write(E), write(' '), write(F), nl.

s(A1, A2, A3, A4, A5, A6,
B1, B2, B3, B4, B5, B6,
C1, C2, C3, C4, C5, C6,
D1, D2, D3, D4, D5, D6,
E1, E2, E3, E4, E5, E6,
F1, F2, F3, F4, F5, F6):-
uniq(A1,A2,A3,A4,A5,A6),
uniq(B1,B2,B3,B4,B5,B6),
uniq(C1,C2,C3,C4,C5,C6),
uniq(D1,D2,D3,D4,D5,D6),
uniq(E1,E2,E3,E4,E5,E6),
uniq(F1,F2,F3,F4,F5,F6),
uniq(A1,B1,C1,D1,E1,F1),
uniq(A2,B2,C2,D2,E2,F2),
uniq(A3,B3,C3,D3,E3,F3),
uniq(A4,B4,C4,D4,E4,F4),
uniq(A5,B5,C5,D5,E5,F5),
uniq(A6,B6,C6,D6,E6,F6).

uniq(A, B, C, D, E, F):- letra(A), letra(B), letra(C), letra(D), letra(E), letra(F),  \+ A=B, \+ A=C, \+ A=D, \+ A=E, \+ A=F, \+ B=C, \+ B=D, \+ B=E, \+ B=F, \+ C=D, \+ C=E, \+ C=F, \+ D=E, \+ D=F, \+ E=F.
letra(1). letra(2). letra(3). letra(4). letra(5). letra(6). 

run :-
statistics(walltime, [TimeSinceStart | [TimeSinceLastCall]]),
tell('6x6_output.txt'),
(
	ls6x6(1,2,3,4,5,6,
		  2,5,_,_,_,_,
		  3,_,_,_,_,_,
		  4,_,_,_,_,_,
		  5,_,_,_,_,_,
		  6,_,_,_,_,_),
	fail;
	told
),
statistics(walltime, [NewTimeSinceStart | [ExecutionTime]]),
nl, write('Tempo: '), write(ExecutionTime), write(' ms.'), nl.