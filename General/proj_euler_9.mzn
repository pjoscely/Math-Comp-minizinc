/*
Project Euler
https://projecteuler.net/

Special Pythagorean triplet

Problem 9
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2+ b^2 = c^2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

*/


% restrict search 
var 1..1000:a;

var int: b;

var int:c;

% b, c depend on a
constraint b in a+1..1000;

constraint c = 1000 - a - b;

% triangle conditions
constraint a < b + c /\ b < a + c /\ c < a + b;

% Pythagorean condition
constraint a*a+b*b=c*c;

% perimeter condition
constraint a+b+c=1000;

solve satisfy;

% display solution
output["product abc = "++"\(a*b*c)"];
 
% product abc = 31875000
