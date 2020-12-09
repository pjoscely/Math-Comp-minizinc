/*
Mark Wallace
Building Decision Support Systems
using MiniZinc

Worker Task Assignment Exercise

There are 12 tasks (numbered 1..12), and 6 workers (numbered 1..6). 

The following array of 0..1 variables
array [1..6,1..12] of var 0..1:Assign;
represents decisions about assigning workers to tasks. 
Assign[w,t] = 1 if worker
w is assigned to task t, and otherwise Assign[w, t] = 0. 

*** Third Challenge ***

Write a model which ensures at least 2 workers, but no more 
than 5 workers are assigned to each task. Along with certain 
pairs of workers cannot be assigned to the same task. 
In the following matrix:

array [1..6,1..6] of 0..1: bad_pair = 
     [|0,1,0,1,0,0
      |1,0,0,0,1,0
      |1,0,0,1,0,0
      |0,0,1,0,1,0
      |0,0,1,0,0,0
      |0,0,0,1,0,0 |] ;

bad_pair[w1, w2] = 1 means that workers w1 and w2 cannot 
be assigned to the same task.

*/
array [1..6,1..6] of 0..1: bad_pair = 
     [|0,1,0,1,0,0
      |1,0,0,0,1,0
      |1,0,0,1,0,0
      |0,0,1,0,1,0
      |0,0,1,0,0,0
      |0,0,0,1,0,0 |] ;

array [1..6,1..12] of var 0..1:Assign;

% at least 2 workers are assigned to each task
constraint forall(worker in 1..6)(sum(task in 1..12)
                                 (Assign[worker,task]) >= 2 );                                                        

% no more than 5 workers are assigned to each task
constraint forall(worker in 1..6)(sum(task in 1..12)
                             (Assign[worker,task]) <= 5 );                                                        


% workers w1 and w2 cannot be assigned to the same task
% no need to check when w1 = w2 
constraint forall(w1, w2 in 1..6 where w1!=w2)(bad_pair[w1,w2] = 1 ->
                  forall(task in 1..12)(Assign[w1,task] + Assign[w2,task] <=1));
                                                                                                                         
solve satisfy;
