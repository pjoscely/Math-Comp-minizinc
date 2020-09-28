/*
2003 AMC 12A Problem 18
Let n be a 5-digit number, and let q and r be the quotient and the remainder,
respectively, when n is divided by 100. For how many values of n is q+r 
divisible by 11?

(A) 8180   (B)  8181  (C)   8182  (D)  9000  (E)  9090
*/
%Five digits
var 1..9:TenTh;
var 0..9:Th;
var 0..9:H;
var 0..9:T;
var 0..9:U;

var int:q;
var int:r;

constraint r = 10000*TenTh+1000*Th+100*H+10*T+U mod 100;

constraint q = (10000*TenTh+1000*Th+100*H+10*T+U) div 100;

constraint (q+r) mod 11 = 0;
solve satisfy;

output ["\(10000*TenTh+1000*Th+100*H+10*T+U)"]; 
/*
11000
----------
12100
----------
13200
----------
...

14801
----------
15901
----------
11011
----------
[ 100 more solutions ]
[ 200 more solutions ]
[ 400 more solutions ]
[ 800 more solutions ]
[ 1600 more solutions ]
[ 3200 more solutions ]
[ 1779 more solutions ]
97999
----------
==========
*/