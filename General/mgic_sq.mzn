
% Magic Square
include "alldifferent.mzn";
% size of magic square to be created
int: N = 5;

% 2-D array decision variable
array[1..N,1..N] of var 1..N*N:sq;

% magic constant 
int:magic_num = (N*(N*N+1)) div 2;

% list comprehension
constraint alldifferent([sq[i,j]|i in 1..N ,j in 1..N]);

% row condition
constraint forall(i in 1..N)(sum(j in 1..N)(sq[i,j]) = magic_num);

% column condition
constraint forall(j in 1..N)(sum(i in 1..N)(sq[i,j]) = magic_num);

% diagonal conditions
constraint forall(i in 1..N)(sum(i in 1..N)(sq[i,i]) = magic_num);
constraint forall(i in 1..N)(sum(i in 1..N)(sq[N+1-i,i]) = magic_num);

solve satisfy;

% display magic square
output[show(sq)];
/*
  [25, 5,  9,   3, 23, 
   4,  24, 15, 14,  8, 
   20, 7,   1, 16, 21, 
   6,  17, 18, 13, 11, 
   10, 12, 22, 19, 2]
*/

