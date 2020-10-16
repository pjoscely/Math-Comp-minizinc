/*
2016 AMC 10B Problem 6
Laura added two three-digit positive integers. 
All six digits in these numbers are different. 
Laura's sum is a three-digit number S. 
What is the smallest possible value for the sum 
of the digits of S?

(A)  1  (B)  4    (C)   5    (D)    15    (E)    20

*/
include "alldifferent.mzn";

%digits of the first number
var 1..9:a1;
var 0..9:a2;
var 0..9:a3;
%digits of the second number
var 1..9:b1;
var 0..9:b2;
var 0..9:b3;
%digits of S 
var 1..9:c1;
var 0..9:c2;
var 0..9:c3;

%sum of the two numbers
var int:S;
%sum of the two numbers
constraint S = 100*a1+10*a2+a3 + 100*b1+10*b2+b3;
%Laura's sum is a three-digit number S. 
constraint S >= 100;
constraint S<=999;

%express S as a sum of the c's
constraint 100*c1+10*c2+c3 = S;

%All six digits in these numbers are different
constraint alldifferent([a1,a2,a3,b1,b2,b3]);
%smallest possible value for the sum  
%of the digits of S
solve minimize (c1+c2+c3);
output["Answer = "++"\(c1+c2+c3)"];
/*

Answer = 4

*/