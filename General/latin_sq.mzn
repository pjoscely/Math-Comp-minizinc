% Latin Square
include "alldifferent.mzn";
% size of Latin square to be created
int: N = 5;

% 2-D array decision variable
array[1..N,1..N] of var 1..N:sq;

% row condition
constraint forall(i in 1..N)(alldifferent([sq[i,j]|j in 1..N]));

% column condition
constraint forall(j in 1..N)(alldifferent([sq[i,j]|i in 1..N]));

solve satisfy;

% display magic square
output[show(sq)];

% [3, 1, 2, 4, 5, 1, 2, 5, 3, 4, 2, 5, 4, 1, 3, 4, 3, 1, 5, 2, 5, 4, 3, 2, 1]