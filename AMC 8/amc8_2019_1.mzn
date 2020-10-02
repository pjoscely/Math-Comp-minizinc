/*
Problem 1 AMC 8 2019
Ike and Mike go into a sandwich shop with a total of $30.00 to spend. 
Sandwiches cost $$4.50$ each and soft drinks cost $1.00 each. 
Ike and Mike plan to buy as many sandwiches as they can, and use any remaining money to buy soft drinks. 
Counting both sandwiches and soft drinks, how many items will they buy?

(A) 6   (B) 7   (C)   8    (D)   9   (E)  10

*/
var int:sands;
var int:drinks;
var int:left;
constraint sands >= 0;
constraint drinks >= 0;
constraint 4.5*sands+ drinks <= 30.0;
constraint left = (30 - 4.5*sands);
solve maximize sands;

output [ "\(sands)"++" "++"\(left)"++" total items = "++"\(sands +left)"]

%6 3 9


