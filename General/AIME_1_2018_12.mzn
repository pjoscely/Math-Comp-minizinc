/*
2018 AIME I Problem 12

For every subset T of U = { 1,2,3,...,18 }, let s(T) be the sum of the elements of T, 
with s(emptyset) defined to be 0. If T is chosen at random among all subsets of U, 
the probability that s(T) is divisible by 3 is m/n, where m and n are 
relatively prime positive integers. Find m.
*/

% Universal set
set of int:possible = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18};

% subsets S of {1,2,3,..,18}
var set of possible:S;

% s(T) is divisible by 3 
constraint (sum (i in S) (i)) mod 3 = 0;
 
solve satisfy;

% Display sets S
output[(show(S))];



