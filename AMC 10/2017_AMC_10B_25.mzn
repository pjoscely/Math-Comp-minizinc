/*
2017 AMC 10B Problem 25
Last year Isabella took 7 math tests and received 7 different scores, 
each an integer between 91 and 100, inclusive. 
After each test she noticed that the average of her test scores was an integer. 
Her score on the seventh test was 95. What was her score on the sixth test?

(A)    92    (B)  94    (C)  96    (D)  98    (E)  100

*/
include "alldifferent.mzn";
% array for possible test scores
array[1..7] of var 91..100: d;

%After each test the average of the test scores is an integer.
constraint (d[1]+d[2]) mod 2 = 0; 
constraint (d[1]+d[2]+d[3]) mod 3 = 0; 
constraint (d[1]+d[2]+d[3]+d[4]) mod 4 = 0; 
constraint (d[1]+d[2]+d[3]+d[4]+d[5]) mod 5 = 0;
constraint (d[1]+d[2]+d[3]+d[4]+d[5]+d[6]) mod 6 = 0; 
constraint (d[1]+d[2]+d[3]+d[4]+d[5]+d[6]+d[7]) mod 7 = 0; 

%Her score on the seventh test was 95
constraint d[7] =  95;

%7 different scores in all
constraint alldifferent(d);
solve satisfy;
output["6th score: "++"\(d[6])"++" "++"\(d)"];

%%  solutions:     8
/*
6th score: 100 [93, 91, 92, 96, 98, 100, 95]
----------
6th score: 100 [96, 92, 91, 93, 98, 100, 95]
----------
6th score: 100 [96, 92, 91, 97, 94, 100, 95]
----------
6th score: 100 [96, 92, 97, 91, 94, 100, 95]
----------
6th score: 100 [91, 93, 92, 96, 98, 100, 95]
----------
6th score: 100 [92, 96, 91, 93, 98, 100, 95]
----------
6th score: 100 [92, 96, 91, 97, 94, 100, 95]
----------
6th score: 100 [92, 96, 97, 91, 94, 100, 95]
----------
*/



