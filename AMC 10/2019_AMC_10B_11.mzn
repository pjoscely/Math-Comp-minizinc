/*
Problem 11 2019 AMC 10B
Two jars each contain the same number of marbles, and every marble is either blue or green. In Jar 1 the ratio of blue to green marbles is 9:1, and the ratio of blue to green marbles in Jar 2 is 8:1. There are 95 green marbles in all. How many more blue marbles are in Jar 1 than in Jar 2?

A    5     B    10    C    25     D    45    E    50
*/
var int:J1;
var int:J2;
var int:G1;
var int:B1;
var int:G2;
var int:B2;

constraint J1 >0;
constraint J2 >0;

constraint G1 >0;
constraint B1 >0;

constraint G2 >0;
constraint B2 >0;

constraint J1 = J2;
constraint J1 = G1 + B1;
constraint J2 = G2 + B2;
constraint G1 + G2 = 95;
%Jar 1 the ratio of blue to green marbles is 9:1
constraint B1 = 9*G1;
%The ratio of blue to green marbles in Jar 2 is 8:1
constraint B2 = 8*G2;
solve satisfy;
output["B2 - B1 = "++"\(B1-B2)"];
/*
B2 - B1 = 5
----------
==========
*/