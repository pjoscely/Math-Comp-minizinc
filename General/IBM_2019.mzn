/*
Find nine different prime numbers that can be placed in a 3x3 square 
in such a way that the average of every row, column, and diagonal 
is also a prime number.

https://www.research.ibm.com/haifa/ponderthis/challenges/April2019.html

*/

include "alldifferent.mzn";

% use primes from P
set of int: P = {3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 
61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 
149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199};

% grid to be filled
array[1..3,1..3] of var P:g;

% 8 possible average values
array[1..8] of var P:a;

% row averages are prime
constraint forall(i in 1..3)(sum(j in 1..3)(g[i,j]) = 3*a[i]);

% column averages are prime
constraint forall(j in 1..3)(sum(i in 1..3)(g[i,j]) = 3*a[j+3]);

% diagonal averages are prime
constraint (sum(i in 1..3)(g[i,i]) = 3*a[7]);

constraint (sum(i in 1..3)(g[i,4-i]) = 3*a[8]);

% nine different prime numbers 
constraint alldifferent([g[i,j]|i,j in 1..3]);

solve satisfy;

% Display the grid of 9 different primes
output["\(g[1,1])"++ " "++"\(g[1,2])"++ " "++"\(g[1,3])"++ "\n"++
       "\(g[2,1])"++ " "++"\(g[2,2])"++ " "++"\(g[2,3])"++ "\n"++
       "\(g[3,1])"++ " "++"\(g[3,2])"++ " "++"\(g[3,3])"++ "\n"];  

/*
17 29 83
41 5 47
53 23 11
*/