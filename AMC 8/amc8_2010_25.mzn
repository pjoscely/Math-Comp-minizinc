/*
2010 AMC 8 Problem 25
Everyday at school, Jo climbs a flight of 6 stairs. 
Jo can take the stairs 1, 2, or 3 at a time. 
For example, Jo could climb 3, then 1, then 2. 
In how many ways can Jo climb the stairs?

(A) 13   (B)  18   (C)  20   (D)   22  (E)  24
*/
%

array[1..6] of var 0..3: s;
constraint sum(s) = 6;
%constraint forall(d in 1..5)(s[d]<=s[d+1]);
solve satisfy;

output["\([s[i]|i in 1..6, where s[i]!=0])"];

