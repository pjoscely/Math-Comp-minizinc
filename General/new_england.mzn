% Colouring New England using n colours
int: n = 3;

% State variables
var 1..n: Maine;   
var 1..n: NewHamp;  
var 1..n: Vermont;   
var 1..n: Conn;
var 1..n: Mass;  
var 1..n: RhodeI;   

% bordering states have different colors
constraint Maine != NewHamp;
constraint NewHamp != Vermont;
constraint NewHamp != Mass;
constraint Vermont != Mass;
constraint Mass != Conn;
constraint Mass !=  RhodeI;
constraint Conn != RhodeI;

solve satisfy;

% display map coloring
output ["Maine = \(Maine)\t New Hamp = \(NewHamp)\t Vermont = \( Vermont)\n",
        "Conn = \(Conn)\t Mass = \(Mass)\t RhodeI = \(RhodeI)\n",
          "\n"];