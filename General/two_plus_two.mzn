include "alldifferent.mzn";

% decision variables
var 1..9:T;
var 0..9:W;
var 0..9:O;

var 1..9:F;
var 0..9:U;
var 0..9:R;

% TWO + TWO = FOUR
constraint 2*(100*T + 10*W + O) = 1000*F + 100*O+ 10*U + R;

% unique values for different letters
constraint alldifferent([T, W, O, F, U, R]); 

% Maximize TWO
solve maximize (100*T + 10*W + O);

% Display the result
output["TWO = "++"\(100*T + 10*W + O)"++" FOUR = "++"\(1000*F + 100*O+ 10*U + R)"];

% TWO = 938 FOUR = 1876


