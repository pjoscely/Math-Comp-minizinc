% Decision variables
var 1..120: a; 
var 1..120: b;
var 1..120: c;  

var 0..120: x1; 
var 0..120: x2;
var 0..120: x3; 

var 0..120: y1; 
var 0..120: y2;
var 0..120: y3;  

var 0..120: z1; 
var 0..120: z2;
var 0..120: z3; 

var 0..120: w1; 
var 0..120: w2;
var 0..120: w3; 
 
% Required constraints
constraint a+b+c = x1+x2+x3;
constraint a*b*c = x1*x2*x3;
constraint a != x1 \/ b != x2 \/c != x3;
constraint a <= b /\ b <= c;
constraint x1 <= x2 /\ x2 <= x3;

constraint a+b+c+3 = y1+y2+y3;
constraint (a+1)*(b+1)*(c+1) = (y1)*(y2)*(y3);
constraint a+1 != y1 \/ b+1 != y2 \/ c+1 != y3;
constraint y1 <= y2 /\ y2 <= y3;

constraint a+b+c+6 = z1+z2+z3;
constraint (a+2)*(b+2)*(c+2) = (z1)*(z2)*(z3);
constraint a+2 != z1 \/ b+2 != z2 \/ c+2 != z3;
constraint z1 <= z2 /\ z2 <= z3;

constraint a+b+c+9 = w1+w2+w3;
constraint (a+3)*(b+3)*(c+3) = (w1)*(w2)*(w3);
constraint a+3 != w1 \/ b+3 != w2 \/ c+3 != w3;
constraint w1 <= w2 /\ w2 <= w3;

solve satisfy;