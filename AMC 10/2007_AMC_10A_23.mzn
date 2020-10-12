/*
2007 AMC 10A Problem 23
How many ordered pairs (m,n) of positive integers, 
with m >= n have the property that their squares 
differ by 96?

(A)  3   (B)  4    (C)  6    (D)  9   (E)  12
*/

var 1..100:m;
var 1..100:n;

constraint m >=n;

constraint m*m - n*n = 96;

solve satisfy;
output["\([m,n])"];
%  solutions:     4

/*
[10, 2]
----------
[11, 5]
----------
[14, 10]
----------
[25, 23]
*/