/*
2006 AMC 10B Problem 10
In a triangle with integer side lengths, one side is three times 
as long as a second side, and the length of the third side is 15. 
What is the greatest possible perimeter of the triangle?

(A)   43    (B)    44    (C)    45    (D)    46    (E)    47
*/

%triangle with integer side lengths
var int:s1;
var int:s2;
var int:s3;

%third side is 15
constraint s3 = 15;

%one side is three times 
%as long as a second side
constraint s1 = 3*s2;

%triangle constraints
constraint s1 < s2 + s3;

constraint s2 < s1 + s3;

constraint s3 < s1 + s2;

%greatest possible perimeter 
solve maximize s1 + s2 + s3;

%display the result
output["Max perimeter = "++"\(s1 + s2 + s3)"];

%Max perimeter = 43

