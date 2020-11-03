/*
Problem 11 1991 AJHSME
There are several sets of three different numbers whose sum is 15 
which can be chosen from {1,2,3,4,5,6,7,8,9}. 
How many of these sets contain a 5?

(A) 3   (B)  4   (C) 5   (D) 6   (E) 7 
*/

% form base set
set of int: possible = {1,2,3,4,5,6,7,8,9};

% form all subsets of possible
var set of possible:c;

% sets of three different numbers
constraint card(c)=3;

% sum is 15
constraint sum (i in c) (i) = 15;

% sets contain a 5
constraint 5 in c;

solve satisfy;
/*
4 sets

c = {1,5,9};
----------
c = {2,5,8};
----------
c = {3,5,7};
----------
c = 4..6;
----------
==========
*/