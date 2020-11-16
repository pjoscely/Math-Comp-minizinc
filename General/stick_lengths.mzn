% Stick pieces
var 1..24:P1; 
var 1..24:P2;
var 1..24:P3;

% increasing lengths
constraint P1 < P2 /\ P2 < P3;

% even lengths
constraint P1 mod 2 = 0 /\ P2 mod 2 = 0 /\ P3 mod 2 = 0;

% stick is 24 cm long 
constraint P1 + P2 + P3 = 24;

%required solve statement
solve satisfy;

%display results
output["P1 = "++"\(P1)"++" P2 = "++"\(P2)"++" P3 = "++"\(P3)"];
/*
P1 = 2 P2 = 4 P3 = 18
----------
P1 = 4 P2 = 6 P3 = 14
----------
P1 = 2 P2 = 6 P3 = 16
----------
P1 = 6 P2 = 8 P3 = 10
----------
P1 = 4 P2 = 8 P3 = 12
----------
P1 = 2 P2 = 8 P3 = 14
----------
P1 = 2 P2 = 10 P3 = 12
----------
==========
*/