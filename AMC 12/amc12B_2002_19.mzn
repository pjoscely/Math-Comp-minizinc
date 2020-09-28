/*
2002 AMC 12B Problem 19
If a,b, and c are positive real numbers such that a(b+c) = 152, 
b(c+a) = 162, and c(a+b) = 170, then abc is

(A) 672   (B)  688   (C)  704    (D)  720   (E)}  750
*/
% Define three int variables
var int: a; 
var int: b; 
var int: c; 

constraint a > 0;
constraint b > 0;
constraint c > 0;

constraint a*(b+c) = 152;
 
constraint b*(c+a) = 162;
 
constraint c*(a+b) = 170;

solve satisfy;

output["\(a*b*c)"];

/*
720
----------
==========
Finished in 53msec
*/