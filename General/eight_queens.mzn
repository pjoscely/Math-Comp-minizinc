include "globals.mzn";

% standard chess board
int: n = 8;

% gives row and column position of queen
% q[2] = 5 col = 2 row = 5
array[1..n] of var 1..n: q;

% no two queens in the same row
constraint all_different(q);

constraint alldifferent([ q[i] + i | i in 1..n]); % distinct diagonals
constraint alldifferent([ q[i] - i | i in 1..n]); % upwards+downwards

solve satisfy;

% Display the board 
output [ if fix(q[j]) = i then "Q" else "." endif ++
         if j = n then "\n" else "" endif | i,j in 1..n]
