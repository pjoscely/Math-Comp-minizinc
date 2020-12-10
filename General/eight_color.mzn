% Coloring map with 4 colors
enum c = {red,green,blue,yellow};

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
constraint X1 != X4;
constraint X1 != X8;
constraint X2 != X4;
constraint X2 != X5;
constraint X2 != X3;
constraint X3 != X5;
constraint X3 != X6;
constraint X4 != X5;
constraint X4 != X7;
constraint X4 != X8;
constraint X5 != X6;
constraint X5 != X7;
constraint X6 != X7;
constraint X7 != X8;

solve satisfy;

/*
X1 = red;
X2 = green;
X3 = red;
X4 = blue;
X5 = yellow;
X6 = blue;
X7 = green;
X8 = yellow;
*/