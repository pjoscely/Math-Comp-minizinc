include "globals.mzn";

% standard chess board
int: n = 4;

% gives row and column position of queen
% q[2] = 5 row = 2 col = 5
array[1..n] of var 1..n: q;

% no two queens in the same column
constraint all_different(q);

% Queens in different diagonals
constraint forall(i, j in 1..n where i < j) ((j-i) != abs(q[j] - q[i]));

solve satisfy;

% Display the board 
output [ if fix(q[j]) = i then "Q" else "." endif ++
         if j = n then "\n" else "" endif | i,j in 1..n]
