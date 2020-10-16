/*
Problem 12 2019 AMC 10B
What is the greatest possible sum of the digits in the base-seven representation of a positive integer less than 2019?
A 11    B 14    C 22    D  23    E  27
*/
var 0..6:A;
var 0..6:B;
var 0..6:C;
var 0..6:D;
constraint A*7*7*7 +  B*7*7 +  C*7 +  D > 0;
constraint A*7*7*7 +  B*7*7 +  C*7 +  D < 2019;
solve maximize (A+B+C+D); 
output["\(A)"++" "++"\(B)"++" "++"\(C)"++" "++"\(D)"++" "++"\(A+B+C+D)"];
/*
----------
5 5 6 6 22
----------
==========
*/
