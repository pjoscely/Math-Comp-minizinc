/*
https://personal.utdallas.edu/~scniu/OPRE-6201/documents/TP5-Assignment.pdf

A company has 4 machines available for assignment to 4 tasks. 
Any machine can be assigned to any task, and each task requires 
processing by one machine. The time required to set up
each machine for the processing of each task is given in the table below.

                     TIME (Hours)
          Task 1 Task 2 Task 3 Task 4
Machine 1 13       4      7      6
Machine 2 1        11     5      4
Machine 3 6        7      2      8
Machine 4 1        3      5      9

The company wants to minimize the total setup time needed for the processing 
of all four tasks.
*/

% task machine cost matrix
array[1..4,1..4] of var int:g = [|13, 4, 7, 6|
                                 1, 11, 5, 4|
                                 6, 7, 2, 8 |
                                 1, 3, 5, 9|];
% 0-1 machine task matching matrix
% matrix will be a permutation matrix
% a single 1 in any row or column                                                            
array[1..4,1..4] of var 0..1:a;  

% total cost for a given matrix a[] assignment
var int:cost = sum([g[i,j]*a[i,j]|i,j in 1..4]);

% given a machine only one task
constraint forall(i in 1..4)(sum(j in 1..4)(a[i,j]) = 1);                                                        

% given a task only one machine
constraint forall(j in 1..4)(sum(i in 1..4)(a[i,j]) = 1);                                                         
                                                                                                          
% minimize the cost
                                                                                                        solve minimize cost;
                                                                                                       
                                                                                                          % display the min cost
                                                                                                         output[
                                                                                                            "Machine Assignment\n"++
                                                                                                             
                                                                                                         show(a[1,1])++" "++show(a[1,2])++" "++show(a[1,3])++" "++show(a[1,4])++"\n"++  
                                                                                                        
show(a[2,1])++" "++show(a[2,2])++" "++show(a[2,3])++" "++show(a[2,4])++"\n"++ 
show(a[3,1])++" "++show(a[3,2])++" "++show(a[3,3])++" "++show(a[3,4])++"\n"                                                                                                     
++show(a[4,1])++" "++show(a[4,2])++" "++show(a[4,3])++" "++show(a[4,4])++"\n" 

++"min cost = "++"\(cost)\n"];

/*
Machine Assignment
0 1 0 0
0 0 0 1
0 0 1 0
1 0 0 0
min cost = 11
*/



                                                                                                         
