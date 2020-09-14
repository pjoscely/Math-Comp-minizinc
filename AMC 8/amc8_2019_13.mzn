/*
Problem 13 AMC 8 2019
A palindrome is a number that has the same value when read from left to right or from right to left. (For example, 12321 is a palindrome.) Let N be the least three-digit integer which is not a palindrome but which is the sum of three distinct two-digit palindromes. What is the sum of the digits of N?
*/
var 1..9:N1;
var 0..9:N2;
var 0..9:N3;
constraint N1 != N3;

var 1..9:A;
var 1..9:B;
var 1..9:C;

constraint A != B;
constraint A != C;
constraint B != C;

constraint 100*N1 + 10*N2 + N3 = 10*A+A+10*B+B+10*C+C;

solve minimize 100*N1 + 10*N2 + N3;

output [ "\(N1)"++" "++"\(N2)"++" "++"\(N3)"++" sum of digits = "++"\(N1+N2+N3)"];

%1 1 0 sum of digits = 2

