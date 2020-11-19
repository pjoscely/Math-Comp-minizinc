%Monthly payments
par float:P = 1700.0;

%Interest rate divided over 12
par float:c = 0.028/12; % 2.8 percent divided by 12

%30 years times twelve months
par float:n = 360.0;

%Loan allowed
var float:L;
%Mortgage equation

constraint P = L*(c*pow(1+c,n))/(pow(1+c,n)-1);

solve satisfy;

%display the result
output["Maximum loan = $"++show_float(6, 2, L)];
 
%Maximum loan = $413731.56
