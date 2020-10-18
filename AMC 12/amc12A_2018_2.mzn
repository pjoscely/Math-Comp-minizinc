/*
2018 AMC 12A Problem 2
While exploring a cave, Carl comes across a collection of 5-pound rocks worth 14 each, 4-pound rocks worth 11 each, and 1-pound rocks worth 2 each. There are at least 20 of each size. He can carry at most 18 pounds. 
What is the maximum value, in dollars, of the rocks he can carry out 
of the cave?

(A) 48    (B) 49     (C) 50     (D) 51    (E) 52
*/
var int:five_pound;
var int:four_pound;
var int:one_pound;

constraint five_pound >=0;
constraint four_pound >=0;
constraint one_pound >=0;

constraint 5*five_pound+4*four_pound+one_pound<=18;

solve maximize 14*five_pound+11*four_pound+2*one_pound;
output["Max value = "++"\(14*five_pound+11*four_pound+2*one_pound)"];
/*
five_pound = 2;
four_pound = 2;
one_pound = 0;

Max value = 50
----------
==========
Finished in 124mse
*/
