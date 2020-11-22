% Coloring map with 3 colors
enum c = {red,green,blue};

% Country variables
var c: X1;   
var c: X2;  
var c: X3;   
var c: X4;
var c: X5;  
var c: X6;   
var c: X7;  
var c: X8;

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
X1 = green;
X2 = blue;
X3 = red;
X4 = green;
X5 = blue;
X6 = green;
X7 = red;
X8 = blue;
*/