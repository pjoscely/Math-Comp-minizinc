/*
2015 AIME II Problem 10

Call a permutation a(1), a(2),..., a(n) of the integers 1, 2,..., n quasi-increasing 
if a(k) <= a(k+1) + 2 for each 1 <= k <= n-1. For example, 53421 and 14253 are 
quasi-increasing permutations of the integers 1, 2, 3, 4, 5, but 45123 is not. 
Find the number of quasi-increasing permutations of the integers 1, 2,...,7.
*/

include "alldifferent.mzn";

% represents the permutation
array[1..7] of var 1..7:a;

% quasi-increasing 
constraint forall(i in 1..6)(a[i] <= a[i+1] + 2);

% insures array is a permutation
constraint alldifferent(a);

solve satisfy;

% display all quasi-increasing permutations
output[show(a)];

%  solutions:     486

/*
[7, 5, 4, 3, 2, 1, 6]
[6, 5, 4, 3, 2, 1, 7]
[7, 6, 4, 3, 2, 1, 5]
. . .
[1, 3, 5, 4, 2, 7, 6]
[2, 1, 5, 4, 3, 7, 6]
[1, 2, 5, 4, 3, 7, 6]
*/
