/*
2015 AMC 12B Problem 10
How many noncongruent integer-sided triangles with positive area and 
perimeter less than 15 are neither equilateral, isosceles, 
nor right triangles?

(A) 3    (B)   4    (C)  5     (D)    6     (E)
*/
include "alldifferent.mzn";
%Three triangle sides
var 1..14:s1;
var 1..14:s2;
var 1..14:s3;
%Perimeter constraint
constraint s1 + s2 + s3 <15;
%Triangle constraints
constraint s1 < s2 + s3;
constraint s2 < s1 + s3;
constraint s3 < s1 + s2;
%Not equilateral
constraint alldifferent([s1, s2,s3]);
%Not isosceles
%constraint s1!=s2 \/ s1!=s3 \/ s2!=s3;
% Not a right triangle
constraint s1*s1 != s2*s2 + s3*s3;
constraint s2*s2 != s1*s1 + s3*s3;
constraint s3*s3 != s1*s1 + s2*s2;

%Filter out identical solutions
constraint s1 < s2;
constraint s2 < s3;

solve satisfy;
/*
s1 = 2;
s2 = 3;
s3 = 4;
----------
s1 = 2;
s2 = 4;
s3 = 5;
----------
s1 = 3;
s2 = 4;
s3 = 6;
----------
s1 = 2;
s2 = 5;
s3 = 6;
----------
s1 = 3;
s2 = 5;
s3 = 6;
----------
==========
*/

