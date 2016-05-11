ls5x5(
A1, A2, A3, A4, A5,
B1, B2, B3, B4, B5,
C1, C2, C3, C4, C5,
D1, D2, D3, D4, D5,
E1, E2, E3, E4, E5):-

s(A1, A2, A3, A4, A5,
B1, B2, B3, B4, B5, 
C1, C2, C3, C4, C5, 
D1, D2, D3, D4, D5, 
E1, E2, E3, E4, E5),
nl, write('Latin Square 5x5'), nl,
printrow(A1,A2,A3,A4,A5),
printrow(B1,B2,B3,B4,B5),
printrow(C1,C2,C3,C4,C5),
printrow(D1,D2,D3,D4,D5),
printrow(E1,E2,E3,E4,E5).

printrow(A, B, C, D, E) :- write(' '), write(A), write(' '), write(B), write(' '), write(C), write(' '), write(D), write(' '), write(E), nl.

s(A1, A2, A3, A4, A5,
B1, B2, B3, B4, B5,
C1, C2, C3, C4, C5,
D1, D2, D3, D4, D5,
E1, E2, E3, E4, E5):-
uniq(A1,A2,A3,A4,A5),
uniq(B1,B2,B3,B4,B5),
uniq(C1,C2,C3,C4,C5),
uniq(D1,D2,D3,D4,D5),
uniq(E1,E2,E3,E4,E5),
uniq(A1,B1,C1,D1,E1),
uniq(A2,B2,C2,D2,E2),
uniq(A3,B3,C3,D3,E3),
uniq(A4,B4,C4,D4,E4),
uniq(A5,B5,C5,D5,E5).

uniq(A, B, C, D, E):- letra(A), letra(B), letra(C), letra(D), letra(E),  \+ A=B, \+ A=C, \+ A=D, \+ A=E, \+ B=C, \+ B=D, \+ B=E, \+ C=D, \+ C=E, \+ D=E.
letra(1). letra(2). letra(3). letra(4). letra(5). 

run :-
statistics(walltime, [TimeSinceStart | [TimeSinceLastCall]]),
tell('5x5_output.txt'),
(
	ls5x5(1,2,3,4,5,
		  2,5,_,_,_,
		  3,_,_,_,_,
		  4,_,_,_,_,
		  5,_,_,_,_),
	fail;
	told
),
statistics(walltime, [NewTimeSinceStart | [ExecutionTime]]),
nl, write('Tempo: '), write(ExecutionTime), write(' ms.'), nl.