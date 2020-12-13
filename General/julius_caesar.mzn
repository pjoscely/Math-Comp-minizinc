% NO + MAN + BEARS + SORROW = BETTER (Julius Caesar)

include "alldifferent.mzn";

% decision variables
var 1..9:N;
var 0..9:O;

var 1..9:M;
var 0..9:A;

var 1..9:B;
var 0..9:E;
var 0..9:R;
var 1..9:S;

var 0..9:W;

var 0..9:T;

% NO + MAN + BEARS + SORROW = BETTER
constraint 10*N + O + 100*M + 10*A + N + 10000*B + 
           1000*E+ 100*A + 10*R + S + 100000*S + 10000*O+ 1000*R + 100*R + 10*O + W =
           100000*B + 10000*E+ 1000*T + 100*T + 10*E + R;
           
constraint alldifferent([N, O, M, A, B, E, R, S, W, T]);        
           
solve satisfy;  

output["A = "++"\(A)"++" B = "++"\(B)"++" E = "++"\(E)"++" M = "++"\(M)"
       ++" N = "++"\(B)"++" O = "++"\(O)"++" R = "++"\(R)"
       ++" S = "++"\(S)"++" T = "++"\(T)"++" W = "++"\(W)"];  
       
% A = 1 B = 3 E = 0 M = 8 N = 3 O = 7 R = 4 S = 2 T = 5 W = 9                   
                                           
