/*
A bag contains twice as many pennies as nickels and 
four more dimes than quarters. Find all possibilities 
for the number of each coin if their total value is $2.01.
*/
var 0..201:P;
var 0..41:N;
var 0..21:D;
var 0..8:Q;

constraint P = 2*N;
constraint D = Q + 4;

constraint 201 = P + 5*N + 10*D + 25*Q;

solve satisfy;
