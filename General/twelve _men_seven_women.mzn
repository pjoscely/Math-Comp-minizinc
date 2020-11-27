/*
Discrete Mathematics Problems
https://www.unf.edu/~wkloster/3100/problems.pdf

Suppose we have 12 different men and 7 different women. How many
ways can we seat them around a circular table so that no two women
sit next to each other? (Note: it may help to assume the seats are
numbered)
*/
% M = man W = woman
enum p = {M, W};

% 19 men and women in a circle 
array[1..19] of var p:c;

% 12 men 
constraint sum([1| i in 1..19 where c[i] = M]) = 12;

% no two women sit next to each other
constraint forall(i in 1..18)(c[i] = W -> c[i+1] = M);  

% start of the array wrap
constraint (c[1] = W -> c[19] = M);

% end of array wrap 
constraint (c[19] = W -> c[1] = M);

solve satisfy;

% display seatings
output["\(c)"];