/*
Problem 13 AMC 8 2018
Laila took five math tests, each worth a maximum of 100 points. 
Laila's score on each test was an integer between 0 and 100, inclusive. 
Laila received the same score on the first four tests, 
and she received a higher score on the last test. 
Her average score on the five tests was 82. 
How many values are possible for Laila's score on the last test?

(A)   4   (B)   5   (C)     (D)   10    (E)   18

*/

var 0..100:F;
var 0..100:L;
constraint L > F;
constraint (4*F + L)/5 = 82;
solve satisfy;
output["Last test = "++"\(L)"];

%%  solutions:     4

/*
Last test = 86
----------
Last test = 90
----------
Last test = 94
----------
Last test = 98
----------
*/
