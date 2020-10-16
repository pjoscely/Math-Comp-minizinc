/*
2015 AMC 10B Problem 25
A rectangular box measures a times b times c, where a,b, and c 
are integers and 1<=a<=b<=c. The volume and surface area of the box 
are numerically equal. How many ordered triples (a,b,c) are possible?

(A) 4    (B)   10    (C)   12    (D)   21    (E)   26$
*/

%box measures
var 1..1000:a;
var 1..1000:b;
var 1..1000:c;

%1<=a<=b<=c
constraint a>=1;
constraint b>=a;
constraint c>=b;

%volume and surface area 
%of the box are numerically equal
constraint a*b*c = 2*a*b + 2*a*c + 2*b*c;

solve satisfy;
output["\([a,b,c])"];

%%  solutions:     10
/*
[6, 6, 6]

[4, 8, 8]

[5, 5, 10]

[4, 5, 20]

[4, 6, 12]

[3, 12, 12]

[3, 7, 42]

[3, 10, 15]

[3, 8, 24]

[3, 9, 18]
*/














