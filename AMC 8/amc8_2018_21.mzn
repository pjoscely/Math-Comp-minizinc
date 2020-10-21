/*
Problem 21 AMC 8 2018
How many positive three-digit integers have a remainder of 2 
when divided by 6, a remainder of 5 when divided by 9, 
and a remainder of 7 when divided by 11?

(A) 1  (B)  2  (C)  3  (D)  4  (E)  5
*/

%possible positive three-digit integers
var 100..999:n;

%remainder constraints 
constraint n mod 6 = 2;
constraint n mod 9 = 5;
constraint n mod 11 = 7;

solve satisfy;

%display result
output ["n = "++"\(n)"]

/*
n = 194;
----------
n = 392;
----------
n = 590;
----------
n = 788;
----------
n = 986;
----------
==========
*/