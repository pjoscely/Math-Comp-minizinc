/*
Problem 18 AMC 8 2018 
How many positive factors does 23,232 have?

(A) 9	(B) 12	(C) 28	(D) 36	(E) 42

*/

% solution set
set of int: ans;

% set comprehension
ans = {i | i in 1..23232 where 23232 mod i = 0};

solve satisfy;

% display total number and solution set
output["Total = "++"\(card(ans))"++" "++"\(ans)"];
/*
Total = 42

{1,2,3,4,6,8,11,12,16,22,24,32,33,44,48,64,66,88,96,
121,132,176,192,242,264,352,363,484,528,704,726,968,1056,
1452,1936,2112,2904,3872,5808,7744,11616,23232}
*/