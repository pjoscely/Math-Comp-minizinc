/*
A bag contains twice as many pennies as nickels and 
four more dimes than quarters. Find all possibilities 
for the number of each coin if their total value is $2.01.
*/

%Coin variables
var 0..201:P;
var 0..41:N;
var 0..21:D;
var 0..8:Q;

%twice as many pennies as nickels
constraint P = 2*N;

%four more dimes than quarters
constraint D = Q + 4;

%total value is $2.01
constraint 201 = P + 5*N + 10*D + 25*Q;

%required solve statement
solve satisfy;

%display results
output["P = "++"\(P)"++" N = "++"\(N)"++" D = "++"\(D)"++" Q = "++"\(Q)"];

/*
P = 46 N = 23 D = 4 Q = 0
----------
P = 36 N = 18 D = 5 Q = 1
----------
P = 26 N = 13 D = 6 Q = 2
----------
P = 16 N = 8 D = 7 Q = 3
----------
P = 6 N = 3 D = 8 Q = 4
----------
==========
*/