/*
Project Euler
https://projecteuler.net/problem=31

Coin sums

Problem 31

In the United Kingdom the currency is made up of pound (£) and pence (p). 
There are eight coins in general circulation:

1p, 2p, 5p, 10p, 20p, 50p, £1 (100p), and £2 (200p).
It is possible to make £2 in the following way:

1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
How many different ways can £2 be made using any number of coins?
*/
% coin variables
var 0..200: p1;
var 0..100: p2;
var 0..40: p3;
var 0..20: p4;
var 0..10: p5;
var 0..4:  p6;
var 0..2:  p7;
var 0..1:  p8;

% coin values
array[1..8] of int:v = [1, 2, 5, 10, 20, 50, 100, 200];

% sum = 200
constraint v[1]*p1 + v[2]*p2  + v[3]*p3 +  v[4]*p4+
           v[5]*p5 + v[6]*p6  + v[7]*p7 +  v[8]*p8  = 200;

solve satisfy;

output["\([p1, p2, p3, p4, p5, p6, p7, p8])"];

/*
[200, 0, 0, 0, 0, 0, 0, 0]
[198, 1, 0, 0, 0, 0, 0, 0]
[196, 2, 0, 0, 0, 0, 0, 0]
. . .
[4, 98, 0, 0, 0, 0, 0, 0]
[2, 99, 0, 0, 0, 0, 0, 0]
[0, 100, 0, 0, 0, 0, 0, 0]
[ 100 more solutions ]
[ 200 more solutions ]
[ 400 more solutions ]
[ 800 more solutions ]
[ 1600 more solutions ]
[ 3200 more solutions ]
[ 6400 more solutions ]
[ 12800 more solutions ]
[ 25600 more solutions ]
[ 22480 more solutions ]
[0, 0, 0, 0, 0, 0, 0, 1]
*/
% 73682 total ways