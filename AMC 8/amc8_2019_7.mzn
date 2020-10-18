/*
Problem 7 AMC 8 2019
Shauna takes five tests, each worth a maximum of 100 points. 
Her scores on the first three tests are 76, 94, and 87. 
In order to average 81 for all five tests, what is the lowest score 
she could earn on one of the other two tests?

(A)  48  (B)  52  (C)  66  (D) 70  (E) 74

*/

%test scores
par int: first = 76;
par int: second = 94;
par int: third = 87;
var int: fourth;
var int: fifth;

%bounds on possible test scores
constraint fourth >= 0;
constraint fifth >= 0;
constraint fourth < 101;
constraint fifth < 101;

%final average constraint
constraint (first + second + third + fourth + fifth)/5 = 81;

%minimize fourth test score
solve minimize fourth;

%display result
output [" lowest fourth score = "++"\(fourth)"]

/*
 lowest score = 48
*/