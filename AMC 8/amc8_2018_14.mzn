/*
Problem 14 AMC 8 2018
Let N be the greatest five-digit number whose digits have a product of 120. 
What is the sum of the digits of N?

(A)   15  (B)   16  (C)   17    (D)   18    (E)   20  

*/

var 1..9:A;
var 1..9:B;
var 1..9:C;
var 1..9:D;
var 1..9:E;
constraint A*B*C*D*E = 120;
solve maximize 10000*A+1000*B + 100*C + 10*D + E;
output [ "Sum of digits = "++"\(A+B+C+D+E)"];
/*
A = 8;
B = 5;
C = 3;
D = 1;
E = 1;

18
----------
==========
*/
