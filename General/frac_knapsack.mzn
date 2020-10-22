%define float variables
var 0.0..1.0:A;
var 0.0..1.0:B;
var 0.0..1.0:C;
var 0.0..1.0:D;

%sack can contain no more than 60 
constraint 40*A+10*B+20*C+24*D<=60;

%maximize profit
solve maximize 280*A+100*B+120*C+120*D;

%display the result
output["A = "++show_float(1, 2, A)++" B = "++show_float(1, 2, B)++
        " C = "++show_float(1, 2, C)++" D = "++show_float(1, 2, D)++
        " Max = "++show_float(5, 2,280*A+100*B+120*C+120*D)];
        
%A = 1.00 B = 1.00 C = 0.50 D = 0.00 Max = 440.00       
        