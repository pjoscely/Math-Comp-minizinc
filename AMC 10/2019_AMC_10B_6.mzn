/*
Problem 6 2019 AMC 10B
There is a real n such that (n+1)! + (n+2)! = n!440. 
What is the sum of the digits of n?

(A) 3   (B)   8     (C)    10    (D)    11       E)   12
*/

% include "globals.mzn"; 
var int:n;
var 1..9:a;
var 0..9:b;

constraint n > 0;
constraint (n+1) + (n+2)*(n+1) = 440; 
constraint 10*a+b = n;

solve satisfy;
output[" n = "++"\(n)"++" "++"sum digits = "++"\(a+b)"];
/*
 n = 19 sum digits = 10
----------
==========
*/

