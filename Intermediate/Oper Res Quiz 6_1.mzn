/*
Coursera
Operations Research (1): Models and Applications

Choose the G12 MIP Configuration

Question 1 Quiz 6
You may produce seven products by consuming three materials. The unit sales price 
and material consumption of each product are listed in Table 1. For each day, 
the supply of these three materials are limited. The supply limits are listed in Table 2. 
For each day, you need to determine the production quantity for each product.

Product	P​rice	M​aterial 1	M​aterial 2	M​aterial 3
1​	       1​00	   0​	           3​	       1​0
2​	       1​20	   5​	          1​0	       1​0
3​	       1​35	   5​	           3​	        9​
4​	        9​0	   4​	           6​	        3​
5​	       1​25	   8​	           2​	        8​
6​	       1​10	   5​	           2​	       1​0
7​	       1​05	   3​	           2​	        7​
                              T​able 1:  Product information for Problem 1

M​aterial	Supply limit
1​	           1​00
2​	           1​50
3​	           2​00
                              T​able 2:  Material information for Problem 1

Formulate a linear integer program that generates a feasible production plan to maximize 
the total profit (which is also the total revenue, as there is no cost in this problem). 
Then write a computer program (e.g., using MS Excel solver) to solve this instance and 
obtain an optimal plan. Do not set the production quantities to be integer; 
leave them fractional. After you find an optimal solution and its objective value, 
write down the integer part of the objective value as your solution 
(i.e., rounding down that value to the closest integer).
*/

% Seven products
var float:p1;
var float:p2;
var float:p3;
var float:p4;
var float:p5;
var float:p6;
var float:p7;

% material constraints
constraint 5*p2+5*p3+4*p4+8*p5+5*p6+3*p7<=100;
constraint 3*p1+10*p2+3*p3+6*p4+2*p5+2*p6+2*p7<=150;
constraint 10*p1+10*p2+9*p3+3*p4+8*p5+10*p6+7*p7<=200;

% Restrict the search
constraint p1>=0;
constraint p2>=0;
constraint p3>=0;
constraint p4>=0;
constraint p5>=0;
constraint p6>=0;
constraint p7>=0;


%Maximize revenue
solve maximize 100*p1+120*p2+135*p3+90*p4+125*p5+110*p6+105*p7;

%display results
output["Max Revenue = "++"\(100*p1+120*p2+135*p3+90*p4+125*p5+110*p6+105*p7)"];

%Max Revenue = 3404.458598726114 ~ $3404