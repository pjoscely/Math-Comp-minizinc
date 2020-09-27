/*
2002 AMC 12B  Problem 5
Let v, w, x, y, and z be the degree measures of the five angles of a pentagon. 
Suppose that v < w < x < y < z and v, w, x, y, and z form an arithmetic sequence. 
Find the value of x.

(A)    72    (B)  84     (C)    90     (D)    108    (E)  120
*/

var int:a;
var int:b;
var int:c;
var int:d;
var int:e;

constraint a > 0;
constraint b > 0;
constraint c > 0;
constraint d > 0;
constraint e > 0;

constraint a+b+c+d+e = 540;

constraint a < b;
constraint b < c;
constraint c < d;
constraint d < e;

constraint b - a = c - b;
constraint c - b = d - c;
constraint d - c = e - d;

solve satisfy;
output["x = "++"\(c)"];

%  solutions:     53
%x = 108

/*
a = 106;
b = 107;
c = 108;
d = 109;
e = 110;
----------
a = 104;
b = 106;
c = 108;
d = 110;
e = 112;
----------
a = 102;
b = 105;
c = 108;
d = 111;
e = 114;
----------
a = 100;
b = 104;
c = 108;
d = 112;
e = 116;
----------
...
----------
a = 6;
b = 57;
c = 108;
d = 159;
e = 210;
----------
a = 4;
b = 56;
c = 108;
d = 160;
e = 212;
----------
a = 2;
b = 55;
c = 108;
d = 161;
e = 214;
----------
==========
*/