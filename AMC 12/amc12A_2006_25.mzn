/*
2006 AMC 12A Problem 25

How many non-empty subsets S of {1,2,3,..,15} have 
the following two properties?

(1) No two consecutive integers belong to S.

(2) If S contains k elements, then S contains no number less than k.

(A) 277    (B)  311    (C)   376  (D)   377  (E)   405
*/

% universal set
set of int:possible = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};

% subsets S of {1,2,3,..,15}
var set of possible:S;

% non-empty subsets
constraint card(S) > 0;

% (1) No two consecutive integers belong to S.
constraint forall(i,j in S)(abs(i-j) != 1);

% (2) If S contains k elements, then S contains no number less than k.
constraint forall(k in 1..15)(card(S) = k -> forall(i in S)(i>=k));
 
solve satisfy;

% Display sets S
output[(show(S))];
/*
1..1
----------
{2,4}
----------
{2,5}
----------
. . .
15..15
*/

%solutions:     405