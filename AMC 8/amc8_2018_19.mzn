/*
Problem 19 AMC 2018
In a sign pyramid a cell gets a "+" if the two cells below it have the same sign, and it gets a "-" if the two cells below it have different signs. The diagram below illustrates a sign pyramid with four levels. How many possible ways are there to fill the four cells in the bottom row to produce a "+" at the top of the pyramid?
                     +
                  +     +
                -    -     -
              +   -     +     -
*/
% Model + by 0; - by 1
var 0..1:row11;

var 0..1:row21;
var 0..1:row22;

var 0..1:row31;
var 0..1:row32;
var 0..1:row33;

var 0..1:row41;
var 0..1:row42;
var 0..1:row43;
var 0..1:row44;

constraint row11 = 0;

constraint if row21 = row22 then row11 = 0 else row11 = 1 endif;
constraint if row31 = row32 then row21 = 0 else row21 = 1 endif;
constraint if row32 = row33 then row22 = 0 else row22 = 1 endif;
constraint if row41 = row42 then row31 = 0 else row31 = 1 endif;
constraint if row42 = row43 then row32 = 0 else row32 = 1 endif;
constraint if row43 = row44 then row33 = 0 else row33 = 1 endif;
solve satisfy; 

output["\(row41)"++" "++"\(row42)"++" "++"\(row43)"++" "++"\(row44)"];
/*

8 total ways

0 0 0 0
----------
1 0 0 1
----------
1 1 0 0
----------
0 1 0 1
----------
1 0 1 0
----------
0 0 1 1
----------
0 1 1 0
----------
1 1 1 1
----------
==========
*/

