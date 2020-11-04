/*
2004 AMC 10A Problem 12
Henry's Hamburger Heaven offers its hamburgers with the 
following condiments: ketchup, mustard, mayonnaise, tomato, 
lettuce, pickles, cheese, and onions. A customer can choose one, 
two, or three meat patties, and any collection of condiments. 
How many different kinds of hamburgers can be ordered?

(A)   24     (B)   256     (C)    768     (D)   40,320     (E)    120,960
*/

%ingredients 
enum h = {h1, h2, h3, ketchup, mustard, mayonnaise, tomato, lettuce, pickles, cheese, onions};

%all possible subsets of h
var set of h: possible;

%must have exactly 1, 2, or 3 meat patties
constraint card(possible intersect {h1, h2, h3}) = 1;

solve satisfy;

% display sets 
output["A burger = "++"\(possible)"];
/*

768 possibilities

A burger = {h1, ketchup, mustard, mayonnaise, tomato, lettuce, pickles, cheese, onions}
----------
A burger = {h1, ketchup, mustard, mayonnaise, tomato, lettuce, pickles, cheese}
----------
A burger = {h1, ketchup, mustard, mayonnaise, tomato, lettuce, pickles, onions}
----------
A burger = {h1, ketchup, mustard, mayonnaise, tomato, lettuce, pickles}
...
A burger = {h1, ketchup, tomato, lettuce, cheese, onions}
----------
[ 100 more solutions ]
[ 200 more solutions ]
[ 366 more solutions ]
A burger = {h3}
----------
*/
