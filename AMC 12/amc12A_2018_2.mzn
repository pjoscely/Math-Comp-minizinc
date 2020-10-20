/*
2018 AMC 12A Problem 2
While exploring a cave, Carl comes across a collection of 5-pound rocks 
worth 14 each, 4-pound rocks worth 11 each, and 1-pound rocks worth 2 each. 
There are at least 20 of each size. He can carry at most 18 pounds. 
What is the maximum value, in dollars, of the rocks he can carry out 
of the cave?

(A) 48    (B) 49     (C) 50     (D) 51    (E) 52
*/

%decision variables
var int:five_p;
var int:four_p;
var int:one_p;

%positive constraints
constraint five_p >=0;
constraint four_p >=0;
constraint one_p >=0;

%define a wt variable
var int:wt = 5*five_p+4*four_p+one_p;

%carry at most 18 pounds
constraint wt<=18;

%maximum value, in dollars
solve maximize 14*five_p+11*four_p+2*one_p;

%display the result
output["five_p = "++"\(five_p)"++" four_p = "++"\(four_p)"++" one_p = "++"\(one_p)"++ " Max value = "++"\(wt)"];

/*
five_p = 2 four_p = 2 one_p = 0 Max value = 18
----------
==========
*/
