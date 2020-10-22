

%define float variables
var -1.5..1.5:x;
var -3.0..3.0:y;

constraint 4*x*x+y*y = 9;

solve maximize 81*x*x+y*y;

%display the result
output["x = "++show_float(6, 1, x)++" y = "++show_float(6, 2, y)++
      " Max = "++show_float(6, 2, 81*x*x+y*y)];

%x =   -1.5 y =  -0.00 Max = 182.25