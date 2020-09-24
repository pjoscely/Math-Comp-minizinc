/*
2018 AMC 10A Problem 4
How many ways can a student schedule 3 mathematics courses -- algebra, geometry, and number theory -- in a 6-period day if no two mathematics courses can be taken in consecutive periods? (What courses the student takes during the other 3 periods 
is of no concern here.)

(A)3     (B)6       (C)12      (D)18       (E) 24
*/
% D is a dummy or filler course

enum c = {A,G,N,D};

array[1..6] of var c: s;

constraint forall(d in 1..5)((s[d] = A) -> (s[d+1] != A));
constraint forall(d in 1..5)((s[d] = A) -> (s[d+1] != G));
constraint forall(d in 1..5)((s[d] = A) -> (s[d+1] != N));

constraint forall(d in 1..5)((s[d] = G) -> (s[d+1] != G));
constraint forall(d in 1..5)((s[d] = G) -> (s[d+1] != A));
constraint forall(d in 1..5)((s[d] = G) -> (s[d+1] != N));

constraint forall(d in 1..5)((s[d] = N) -> (s[d+1] != N));
constraint forall(d in 1..5)((s[d] = N) -> (s[d+1] != A));
constraint forall(d in 1..5)((s[d] = N) -> (s[d+1] != G));

constraint forall(i in 1..5, j in 2..6 where i <j)((s[i] = A) -> (s[j] != A));
constraint forall(i in 1..5, j in 2..6 where i <j)((s[i] = G) -> (s[j] != G));
constraint forall(i in 1..5, j in 2..6 where i <j)((s[i] = N) -> (s[j] != N));

constraint sum(i in 1..6)(bool2int(s[i]=D)) = 3;

solve satisfy;
output[show(s)];
/*
%%  solutions:     24
[N, D, G, D, A, D]
----------
[G, D, N, D, A, D]
----------
[G, D, D, A, D, N]
----------
[N, D, D, A, D, G]
----------
[D, G, D, A, D, N]
----------
[D, N, D, A, D, G]
----------
[G, D, A, D, N, D]
----------
[G, D, A, D, D, N]
----------
[N, D, A, D, G, D]
----------
[N, D, A, D, D, G]
----------
[D, A, D, N, D, G]
----------
[D, A, D, G, D, N]
----------
[A, D, N, D, G, D]
----------
[A, D, G, D, N, D]
----------
[A, D, D, G, D, N]
----------
[N, D, D, G, D, A]
----------
[D, N, D, G, D, A]
----------
[D, G, D, N, D, A]
----------
[G, D, D, N, D, A]
----------
[A, D, D, N, D, G]
----------
[A, D, N, D, D, G]
----------
[A, D, G, D, D, N]
----------
[G, D, N, D, D, A]
----------
[N, D, G, D, D, A]
----------
==========
%%  runtime:       0.002 (2.473 ms)
%%  solvetime:     0.000 (0.976 ms)
%%  solutions:     24
%%  variables:     48
%%  propagators:   118
%%  propagations:  3047
%%  nodes:         71
%%  failures:      12
%%  restarts:      0
%%  peak depth:    5
*/