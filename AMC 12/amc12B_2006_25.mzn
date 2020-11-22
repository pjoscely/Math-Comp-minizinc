/*
2006 AMC 12B Problem 25
A sequence a(n) of non-negative integers is defined by the rule 
a(n+2) = |a(n+1)-a(n)| for n >= 1. If a(1) = 999, a(2) < 999 and 
a(2006) = 1, how many different values of a(2) are possible?

(A)  165   (B)  324   (C)  495   (D)  499   (E)  660
*/
% sequence a(n) non-negative integers
array[1..2006] of var 0..1000:a;

% a(1) = 999,
constraint a[1] = 999;

% a(2) < 999
constraint a[2] < 999;

% a(2006) = 1
constraint a[2006] = 1;

% defined by the rule a(n+2) = |a(n+1)-a(n)|
constraint forall(i in 1..2004)(abs(a[i+1]-a[i]) = a[i+2]);

solve satisfy;

output[show(a[2])];

% solutions:     324