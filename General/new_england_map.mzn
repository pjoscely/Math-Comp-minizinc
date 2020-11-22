% Coloring New England using three colors
enum c = {red,green,blue};

% State variables
var c: Maine;   
var c: NewHamp;  
var c: Vermont;   
var c: Conn;
var c: Mass;  
var c: RhodeI;   

% bordering states have different colors
constraint Maine != NewHamp;
constraint NewHamp != Vermont;
constraint NewHamp != Mass;
constraint Vermont != Mass;
constraint Mass != Conn;
constraint Mass !=  RhodeI;
constraint Conn != RhodeI;

solve satisfy;
/*
Maine = blue;
NewHamp = green;
Vermont = red;
Conn = red;
Mass = blue;
RhodeI = green;
*/