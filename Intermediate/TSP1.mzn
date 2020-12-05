/*
Traveling "Saleswitch" problem.

https://jlmartin.ku.edu/courses/math105-F11/Lectures/chapter6-part3.pdf

Find a Hamilton circuit of mininum weight for the distance matrix below: 

                H  P   G   C   D   T  
Home (H)        0  36  32  54  20  40
Pet Store (P)   36 0   22  58  54  67
Greenhouse (G)  32 22  0   36  42  71
Cleaners (C)    54 58  36  0   50  92
Drugstore (D)   20 54  42  50  0   45
Target (T)      40 67  71  92  45  0
*/

include "alldifferent.mzn";

par int:num = 6;

% destinations
enum d = {H,P,G,C,D,T};

% distance matrix
array [H..T,H..T] of var int:a =[|0,36,32,54,20,40|
                                  36,0,22,58,54,67|
                                  32,22,0,36,42,71|
                                  54,58,36,0,50,92|
                                  20,54,42,50,0,45|
                                  40,67,71,92,45,0|];  
% possible circuit
array[1..num] of var d:c;

% circuit's cost
array[1..num] of var int:cost;

% cost from destination c[i] to c[i+1] i = 1..num-1
constraint forall(i in 1..num-1)(cost[i] = a[c[i],c[i+1]]);

% cost from last stop to start
constraint cost[num] = a[c[num],c[1]];

% visit a destination exactly once
constraint alldifferent(c);

% total cost for a circuit 
var int:total = sum([cost[i]| i in 1..num]);

solve minimize total; 

output["Optimal Hamilton Circuit:\n"++
       show(c[1])++" "++show(c[2])++" "++show(c[3])++" "
       ++show(c[4])++" "++show(c[5])++" "++show(c[6])++" "
       ++show(c[1])
       ++"\nMininum cost = "++show(total)];
/*
Optimal Hamilton Circuit:
T D C G P H T
Mininum cost = 229
*/
