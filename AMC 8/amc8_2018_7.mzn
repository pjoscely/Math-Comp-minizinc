/*
Problem 7 AMC 8 2018
The 5-digit number 2018U is divisible by 9. 
What is the remainder when this number is divided by 8?

(A) 1    (B) 3     (C)   5   (D)   6   (E)   7

*/
var 0..9:U;
var int: ans = 10000*2+100*1 + 10*8 + U;
constraint  ans mod 9 = 0;
solve satisfy; 
output [ "Remainder mod 8 = "++"\(ans mod 8)"];
/*
Remainder mod 8 = 3
*/
