/*
2018 AMC 12B Problem 5
How many subsets of {2,3,4,5,6,7,8,9} contain 
at least one prime number?

(A) 128 (B) 192 (C)  224 (D)  240 (E) 256
*/
set of int: possible;
possible = {2,3,4,5,6,7,8,9};
var set of possible:c;
constraint card(c intersect {2,3,5,7}) > 0;
solve satisfy;
output[show(c)];

%%  solutions:     240
/*
2..9
----------
2..8
----------
{2,3,4,5,6,7,9}
----------
...
7..8
----------
{7,9}
----------
7..7
----------
==========
*/