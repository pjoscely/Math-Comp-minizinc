% Matt Parker's Puzzle #11
% https://www.think-maths.co.uk/agepuzzle
% David and Anton's ages combined equals 65. 
% David is currently three times as old as Anton was when 
% David was half as old as Anton will be when Anton is three times 
% as old as David was when David was three times as old as Anton.

% Puzzle for submission: How old is David?

% David's ages
var float :D0;
var float :D1;
var float :D2;
var float :D3;

% Anton's ages
var float :A0;
var float :A1;
var float :A2;
var float :A3;

% ages combined equals 65
constraint D0+A0 = 65;

% David is currently three times as old as Anton was when
constraint D0 = 3*A1;

% David was half as old as Anton will be when
constraint D1 = (0.5)*A2;

% Anton is three times as old as David was when
constraint A2 = 3*D3;

% David was three times as old as Anton
constraint D3 = 3*A3;

% constant difference in ages 
% across time instances
constraint D1-D0 = A1-A0;
constraint D2-D1 = A2-A1;
constraint D3-D2 = A3-A2;

solve satisfy;

output
[
  "David age's: " ++ show(D0)
];

%David age's: 37.5
