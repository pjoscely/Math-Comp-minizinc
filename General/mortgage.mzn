%Monthly payments
par float:P = 1200.0;
%Interest rate divided over 12
par float:c = 0.002417; % 2.9 percent divided by 12
%30 years times twelve monhs
par float:n = 360.0;
%Loan allowed
var float:L;
%Mortgage equation
constraint P = L*(c*pow(1+c,n))/(pow(1+c,n)-1);

solve satisfy;

output["Maximum loan = $"++show_float(6, 2, L)];
 