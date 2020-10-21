/*
Find the maximal value of z = 3x + 4y 
subject to the following constraints:
x + 2y <= 14, 3x - y >= 0, x - y <= 2
*/

%define float variables
var float:x;
var float:y;

%constraints
constraint x+2*y<=14;
constraint 3*x-y>=0;
constraint x-y<=2;

%maximize
solve maximize 3*x+4*y;

%display the result
output["x = "++"\(x)"++" y = "++"\(y)"++" Max = "++"\(3*x+4*y)"];

%x = 6.0 y = 4.0 Max = 34.0



