/*
2004 AMC 10A Problem 22
Let S be the set of the 2005 smallest positive multiples of 4, 
and let T be the set of the 2005 smallest positive multiples of 6. 
How many elements are common to S and T?

(A)    166    (B)    333    (C)    500    (D)    668    (E)    1001
*/

%2005 smallest positive multiples of 4
set of int:S;
S = {4*i | i in 1..2005};

%2005 smallest positive multiples of 6
set of int:T;
T = {6*i | i in 1..2005};

solve satisfy;

%Display elements common to S and T?
output["Number common = "++"\(card(S intersect T))"];

%Number common = 668