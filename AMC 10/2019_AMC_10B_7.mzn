/*
Problem 7 2019 AMC 10B
Each piece of candy in a store costs a whole number of cents. Casper has exactly enough money to buy either 12 pieces of red candy, 14 pieces of green candy, 15 pieces of blue candy, or n pieces of purple candy. A piece of purple candy costs 20 cents. What is the smallest possible value of n?

(A)   18    (B)  21 (C)   24   (D)    25     (E)   28
*/
var 18..28:n;
var int:money;
var int:red;
var int:green;
var int:blue;

constraint money = 12*red;
constraint money = 14*green;
constraint money = 15*blue;
constraint money = n*20;

solve minimize n;
/*
n = 21;
money = 420;
red = 35;
green = 30;
blue = 28;
----------
==========
*/
