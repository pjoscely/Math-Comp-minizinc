/*
2001 AMC 12 Problem 21
Four positive integers a, b, c, and d have a product of 8! and satisfy:

ab + a + b = 524 
bc + b + c = 146 
cd + c + d = 104 
What is a-d?

(A) 4 (B) 6 (C) 8 (D) 10 (E) 12
*/
var int:a;
var int:b;
var int:c;
var int:d;

constraint a>0;
constraint b>0;
constraint c>0;
constraint d>0;

constraint a*b*c*d = 56*30*24;

constraint a*b + a + b = 524; 
constraint b*c + b + c = 146; 
constraint c*d + c + d = 104; 

solve satisfy;

output["\(a)"++" "++"\(b)"++" "++"\(c)"++" "++"\(d)"++" "++"ans = "++"\(a-d)"];
/*
24 20 6 14 ans = 10
----------
==========
Finished in 55msec
*/