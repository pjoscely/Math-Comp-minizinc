/*
Problem 6 AMC 10A 2020
How many 4-digit positive integers (that is, integers between 1000 and 9999, 
inclusive) having only even digits are divisible by 5?

A 80    B 100    C 125     D 200   E 500 

*/
set of int: e;
e = {i | i in 0..9 where i mod 2 = 0};

set of int: nums;
nums = {1000*i+100*j+10*k+l | i in e, j in e, k in e, l in e where i>0};

set of int:ans;
ans = {i | i in nums where i mod 5 = 0};

solve satisfy;
output["Number of possible is: "++"\(card(ans))"];
/*
Number of possible is: 100
----------
==========
*/
