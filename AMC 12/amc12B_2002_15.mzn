/*
2002 AMC 12B Problem 15
How many four-digit numbers N have the property that the 
three-digit number obtained by removing the leftmost digit 
is one ninth of N?

(A)  4   (B)  5   (C)  6     (D)  7   (E)  8
*/
%Four digits
var 1..9:Th;
var 0..9:H;
var 0..9:T;
var 0..9:U;

constraint 9*(100*H+10*T+U)=1000*Th+100*H+10*T+U;

solve satisfy;

output["\(Th)"++" "++"\(H)"++" "++"\(T)"++" "++"\(U)"];
/*

%%  solutions:     7

1 1 2 5
----------
2 2 5 0
----------
3 3 7 5
----------
4 5 0 0
----------
5 6 2 5
----------
6 7 5 0
----------
7 8 7 5
----------
==========
Finished in 55msec
*/





