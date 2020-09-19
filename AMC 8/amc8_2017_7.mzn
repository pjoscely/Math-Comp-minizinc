/*
Problem 7 AMC 2017
Let Z be a 6-digit positive integer, such as 247247, whose first three digits are the same as its last three digits taken in the same order. Which of the following numbers must also be a factor of Z?

A 11   B 19   C 101   D 111   E 1111
*/
set of int: nums;
nums = {100000*i+10000*j+1000*k+100*i+10*j+k | i in 1..9, j in 0..9, k in 0..9};

var 11..1111:d;

set of int: possible;
possible = {11,19,101,111,1111};

constraint forall(n in nums)(n mod d = 0);
constraint d in possible;

solve satisfy;
output["possible d values: "++" "++"\(d)"];
/*
possible d values:  11
----------
==========
*/







