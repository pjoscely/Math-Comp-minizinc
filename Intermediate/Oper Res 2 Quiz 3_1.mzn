/*
Coursera
Operations Research (2): Optimization Algorithms

Choose the G12 MIP Configuration

Quiz 3 Question 1
In this problem, we will use the branch-and-bound algorithm to solve 
the following IP

max 3*x1 + 5*x2

such that 
x 1 + x2 ≤16
x2 ≤ 7.5  xi ∈ ℤ+ ∀i=1,2.

As always, our first step is to solve the linear relaxation of the given IP. 
Write down the unique optimal solution in the order of x1 and x2 
​by separating two consecutive values with a comma. Do not have any symbol other 
than numeric values, negation, decimal point, and comma in your answer. 
For example, if you believe an optimal solution is (0.2, -2.3)(0.2,−2.3), 
write down "0.2,-2.3''.
*/

% Variables
var float:x1;
var float:x2;

% Restrict the search
constraint x1>=0;
constraint x2>=0;
constraint x1+x2<=16;
constraint x2<=7.5;

%Maximize
solve maximize 3*x1 + 5*x2;
output["Max = "++"\(3*x1 + 5*x2)"++" x1 = "++"\(x1)"++" x2 = "++"\(x2)"];
/*
Max = 63.0 x1 = 8.5 x2 = 7.5
*/