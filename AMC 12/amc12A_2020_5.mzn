/*
Problem 5 AMC 12A 2020
The 25 integers from -10 to 14 inclusive, can be arranged to form a 5-by-5 square 
in which the sum of the numbers in each row, the sum of the numbers in each column, 
and the sum of the numbers along each of the main diagonals are all the same. 
What is the value of this common sum?

A 2    B 5    C 10    D 25    E 50
*/
include "alldifferent.mzn";
set of int: h = 1..5;
set of int: w = 1..5;  
array[h,w] of var -10..14: g;
var int:c;

%Diagonal conditions
constraint sum (i in 1..5) (g[i,i]) = c;
constraint sum (i in 1..5) (g[i,6-i]) = c;

%Row conditions

constraint sum (j in 1..5) (g[1,j]) = c;
constraint sum (j in 1..5) (g[2,j]) = c;
constraint sum (j in 1..5) (g[3,j]) = c;
constraint sum (j in 1..5) (g[4,j]) = c;
constraint sum (j in 1..5) (g[5,j]) = c;

%Column conditions
constraint sum (i in 1..5) (g[i,1]) = c;
constraint sum (i in 1..5) (g[i,2]) = c;
constraint sum (i in 1..5) (g[i,3]) = c;
constraint sum (i in 1..5) (g[i,4]) = c;
constraint sum (i in 1..5) (g[i,5]) = c;


constraint alldifferent([g[i,j]|i in 1..5, j in 1..5]); 
solve satisfy; 

/*
g = array2d(1..5 ,1..5 ,[14, -7, 12, -8, -1, -6, 10, -3, 8, 1, -2, 7, -10, 2, 13, -5, 4, 0, 5, 6, 9, -4, 11, 3, -9]);
c = 10;
*/
