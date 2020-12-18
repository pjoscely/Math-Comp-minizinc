
% 0-1 knapsack
array[1..8] of var 0..1:sack;

% item weights
array[1..8] of int:w = [25, 35, 45, 5, 25, 3, 2, 2];

% item values
array[1..8] of int:v = [350, 400,450, 20, 70, 8, 5, 5];

% total weight <= 104
constraint sum([w[i]*sack[i]|i in 1..8])<=104;

% maximize total sack value
solve maximize(sum([v[i]*sack[i]|i in 1..8]));

% display max value and 0-1 sack values
output["Max value = "++ show(sum([v[i]*sack[i]|i in 1..8]))++" "++
        "sack = "++show(sack)];

% Max value = 900 sack = [1, 0, 1, 1, 1, 0, 1, 1]
