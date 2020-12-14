/*
2015 AIME II Problem 3

Let m be the least positive integer divisible by 17
whose digits sum to 17. Find m.
*/

% all AIME solutions are three digit numbers
var 0..9:H;
var 0..9:T;
var 0..9:U;

% positive integer
constraint 100*H + 10*T + U > 0;

% digits sum to 17
constraint H + T + U = 17;

% divisible by 17
constraint (100*H + 10*T +U) mod 17 = 0;

% find mininum
solve minimize (100*H + 10*T +U);

output["\(H)"++"\(T)"++"\(U)"];

% 476
