/*
2016 AMC 12B Problem 15
All the numbers 2, 3, 4, 5, 6, 7 are assigned to the six faces of a cube, 
one number to each face. For each of the eight vertices of the cube, 
a product of three numbers is computed, where the three numbers are 
the numbers assigned to the three faces that include that vertex. 
What is the greatest possible value of the sum of these eight products?

(A) 312  (B)  343   (C)  625   (D)  729    (E)  1680 
*/
include "alldifferent.mzn";
% array for faces
array[1..6] of var 2..7: s;
% Eight int variables for vertices
var int:v1;
var int:v2;
var int:v3;
var int:v4;
var int:v5;
var int:v6;
var int:v7;
var int:v8;

% Eight constraint equations form cube geometry
constraint v1 = s[4]*s[1]*s[5];
constraint v2 = s[1]*s[2]*s[5];
constraint v3 = s[2]*s[3]*s[5];
constraint v4 = s[3]*s[4]*s[5];

constraint v5 = s[4]*s[1]*s[6];
constraint v6 = s[1]*s[2]*s[6];
constraint v7 = s[2]*s[3]*s[6];
constraint v8 = s[3]*s[4]*s[6];


% Insure numbers are assigned once to a cube face
constraint alldifferent([s[1],s[2],s[3],s[4],s[5],s[6]]);

% Required quantity to be maximized
solve maximize v1+v2+v3+v4+v5+v6+v7+v8;

output["Max = "++"\(v1+v2+v3+v4+v5+v6+v7+v8)"];

/*
Max = 729
----------
==========
Finished in 4s 859msec
*/



