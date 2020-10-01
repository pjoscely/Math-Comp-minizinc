/*
2015 AMC 8 Problem 13
How many subsets of two elements can be removed from the set 
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11} so that the 
mean (average) of the remaining numbers is 6?

(A)  1   (B)  2    (C)    3    (D)    5    (E)    6
*/

%Parent set
set of int: possible;
possible = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};

%All possible subsets of the parent set
var set of possible:c;

%Require the cardinality of 9
constraint card(c) = 9;

%average of the remaining numbers is 6
%after a two element subset is removed
constraint sum([n|n in c]) = 54;

solve satisfy;
%Display all two element subsets
output["\(possible diff c)"];

%%  solutions:     5
/*
{5,7}
----------
{4,8}
----------
{3,9}
----------
{2,10}
----------
{1,11}
----------
==========
*/
