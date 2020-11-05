/*
MPMP15: PRIME PAIRS PUZZLE
Rearrange the numbers from 1-9, such that all adjacent pairs sum to a prime number. 
*/

include "alldifferent.mzn";

% the numbers from 1-9
par int:n = 9;

% set of possible prime sums
par set of int: primes = {2,3,5,7,11,13,17,19};

% represent solutions in an array
array[1..n] of var 1..n: s;

% adjacent pairs sum to a prime number
constraint forall(i in 1..n-1)((s[i]+s[i+1]) in primes);

% insure each digit is used exactly once
constraint alldifferent(s);

solve satisfy;

% display solutions
output["\(s)"];

% solutions:     140
/*
[7, 4, 9, 8, 5, 6, 1, 2, 3]
----------
[7, 4, 3, 8, 5, 6, 1, 2, 9]
----------
[7, 4, 1, 6, 5, 8, 3, 2, 9]
. . .
[7, 6, 5, 2, 1, 4, 9, 8, 3]
----------
[3, 2, 1, 6, 7, 4, 9, 8, 5]
----------
[7, 6, 1, 2, 3, 4, 9, 8, 5]
----------
==========
*/