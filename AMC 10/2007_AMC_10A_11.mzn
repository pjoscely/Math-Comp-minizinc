/*
2007 AMC 10A Problem 11
The numbers from 1 to 8 are placed at the 
vertices of a cube in such a manner that 
the sum of the four numbers on each face 
is the same. What is this common sum?

(A)    14    (B)    16    (C)   18    (D)  20    (E)  24
*/
include "alldifferent.mzn";
% array for possible vertices values
array[1..8] of var 1..8: a;

%common sum of the four numbers on each face
constraint a[1]+a[2]+a[3]+a[4] = a[7]+a[2]+a[3]+a[6];
constraint a[7]+a[2]+a[3]+a[6] = a[1]+a[5]+a[8]+a[4];
constraint a[1]+a[5]+a[8]+a[4] = a[6]+a[5]+a[8]+a[7];
constraint a[6]+a[5]+a[8]+a[7] = a[1]+a[2]+a[6]+a[5];
constraint a[1]+a[2]+a[6]+a[5] = a[7]+a[8]+a[3]+a[4];

constraint alldifferent(a);
solve satisfy;
output["common sum = "++"\(a[1]+a[2]+a[3]+a[4])"];
%  solutions:     144

% common sum = 18