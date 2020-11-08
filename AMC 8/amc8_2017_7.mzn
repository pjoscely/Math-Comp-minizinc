/*
Problem 7 AMC 8 2017
Let Z be a 6-digit positive integer, such as 247247, 
whose first three digits are the same as its last three digits 
taken in the same order. 
Which of the following numbers must also be a factor of Z?

A 11   B 19   C 101   D 111   E 1111
*/
% set of possible Z
set of int: nums;

% first three digits are the same as last three digits 
nums = {100000*i+10000*j+1000*k+100*i+10*j+k | i in 1..9, j in 0..9, k in  0..9};

% decision variable 
var int:d;

% d limited to the 5 options above
constraint d in {11,19,101,111,1111};

% factor requirement
constraint forall(n in nums)(n mod d = 0);

solve satisfy;

% display solution
output["d = "++" "++"\(d)"];
/*
d =  11
----------
==========
*/







