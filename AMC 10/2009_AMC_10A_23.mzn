/*
2008 AMC 10A Problem 23
Two subsets of the set S= {a,b,c,d,e} are to be chosen 
so that their union is S and their intersection 
contains exactly two elements. In how many ways can 
this be done, assuming that the order in which 
the subsets are chosen does not matter?

(A)  20   (B)   40    (C)   60    (D)   160   (E)   320
*/
%enumerated data type 
enum m = {a,b,c,d,e};

%first subset
var set of m: s1;

%second subset
var set of m: s2;

%union is S
constraint (s1 union s2) = m;

%intersection contains exactly two elements
constraint card (s1 intersect s2) = 2;

%count solutions only once
constraint card (s1) <= card(s2);

solve satisfy;

output["\(s1)"++" "++"\(s2)"];

%  solutions:     40
/*
{a, b} {a, b, c, d, e}
----------
{a, c} {a, b, c, d, e}
----------
{a, d} {a, b, c, d, e}
----------
{a, e} {a, b, c, d, e}
----------
{b, c} {a, b, c, d, e}
----------
{b, d} {a, b, c, d, e}
----------
{b, e} {a, b, c, d, e}
----------
{c, d} {a, b, c, d, e}
----------
{c, e} {a, b, c, d, e}
----------
{d, e} {a, b, c, d, e}
----------
{a, b, e} {a, b, c, d}
----------
{a, c, e} {a, b, c, d}
----------
{a, d, e} {a, b, c, d}
----------
{b, c, e} {a, b, c, d}
----------
{b, d, e} {a, b, c, d}
----------
{c, d, e} {a, b, c, d}
----------
{a, b, d} {a, b, c, e}
----------
{a, c, d} {a, b, c, e}
----------
{a, d, e} {a, b, c, e}
----------
{b, c, d} {a, b, c, e}
----------
{b, d, e} {a, b, c, e}
----------
{c, d, e} {a, b, c, e}
----------
{a, b, c} {a, b, d, e}
----------
{a, c, d} {a, b, d, e}
----------
{a, c, e} {a, b, d, e}
----------
{b, c, d} {a, b, d, e}
----------
{b, c, e} {a, b, d, e}
----------
{c, d, e} {a, b, d, e}
----------
{a, b, c} {a, c, d, e}
----------
{a, b, d} {a, c, d, e}
----------
{a, b, e} {a, c, d, e}
----------
{b, c, d} {a, c, d, e}
----------
{b, c, e} {a, c, d, e}
----------
{b, d, e} {a, c, d, e}
----------
{a, b, c} {b, c, d, e}
----------
{a, b, d} {b, c, d, e}
----------
{a, b, e} {b, c, d, e}
----------
{a, c, d} {b, c, d, e}
----------
{a, c, e} {b, c, d, e}
----------
{a, d, e} {b, c, d, e}
*/


