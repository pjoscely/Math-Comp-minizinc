% Coloring map with n colors
int: n = 3;

% Country variables
var 1..n: X1;   
var 1..n: X2;  
var 1..n: X3;   
var 1..n: X4;
var 1..n: X5;  
var 1..n: X6;   
var 1..n: X7;  
var 1..n: X8;

% bordering countries have different colors
constraint X1 != X2;
constraint X1 != X3;
constraint X2 != X3;
constraint X2 != X4;
constraint X3 != X4;
constraint X3 != X5;
constraint X3 != X6;
constraint X3 != X8;
constraint X4 != X5;
constraint X5 != X6;
constraint X5 != X7;
constraint X6 != X7;
constraint X6 != X8;
constraint X7 != X8;

solve satisfy;

/*
X1 = 2;
X2 = 3;
X3 = 1;
X4 = 2;
X5 = 3;
X6 = 2;
X7 = 1;
X8 = 3;
*/