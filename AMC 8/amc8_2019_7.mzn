/*
Problem 7 AMC 8 2019
Shauna takes five tests, each worth a maximum of 100 points.
Her scores on the first three tests are 76, 94, and 87. In order to average 81 for all five tests, 
what is the lowest score she could earn on one of the other two tests?
*/
par int: first = 76;
par int: second = 94;
par int: third = 87;
var int: fourth;
var int: fifth;
constraint fourth > 40;
constraint fifth > 40;
constraint fourth < 101;
constraint fifth < 101;

constraint (first + second + third + fourth + fifth)/5 = 81;
solve minimize fourth;
output [" lowest score = "++"\(fourth)"]

/*
 lowest score = 48
----------
==========
*/
