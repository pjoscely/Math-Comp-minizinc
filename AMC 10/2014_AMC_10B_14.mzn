/*
2014 AMC 10B Problem 14
Danica drove her new car on a trip for a whole number of hours, 
averaging 55 miles per hour. At the beginning of the trip, 
abc miles was displayed on the odometer, where abc is a 
3-digit number with a >=1 and a + b + c <= 7. At the end of the trip, 
the odometer showed cba miles. What is a^2 + b^2 + c^2?

(A)   26   (B)   27   (C)   36   (D)   37   (E)   41
*/

%abc is a 3-digit number 
var 1..9:a;
var 0..9:b;
var 0..9:c;

%hours traveled
var int:h;

constraint h>=1;

%a + b + c <= 7
constraint a + b + c <= 7;

%trip rate constraint
constraint   a*100+b*10+c + 55*h = c*100 + b*10 +a;

solve satisfy;


output["a^2 + b^2 + c^2 = "++"\(a*a+b*b+c*c)"++" "++"\([a,b,c])"];

%a^2 + b^2 + c^2 = 37 [1, 0, 6]












