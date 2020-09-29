/*
2020 AMC 12B Problem 5
Teams A and B are playing in a basketball league where each game results 
in a win for one team and a loss for the other team. Team A has won 2/3 
of its games and team B has won 5/8 of its games. Also, team B has won 
7 more games and lost 7 more games than team A How many games has team A played?

(A)   21 (B)   27 (C)   42     (D)    48     (E)   63
*/
%Loss win decision variables
var int:aw;
var int:al;
var int:bw;
var int:bl;

%Lower bound constraints
constraint aw >= 0;
constraint al >= 0;
constraint bw >= 0;
constraint bl >= 0;

%Ratio constraints
constraint 3*aw = 2*(aw+al);
constraint 8*bw = 5*(bw+bl);

%Total win loss constraints
constraint aw +7 = bw;
constraint al +7=  bl;

solve satisfy;
output ["Games team A played: "++"\(aw+al)"]; 
/*
Games team A played: 42
----------
==========
Finished in 49msec
*/

