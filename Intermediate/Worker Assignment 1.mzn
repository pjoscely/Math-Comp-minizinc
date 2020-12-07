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

*** First Challenge ***

Write a model which ensures at least 2 workers are assigned to each task.
*/
array [1..6,1..12] of var 0..1:Assign;

% at least 2 workers are assigned to each task
constraint forall(worker in 1..6)(sum(task in 1..12)(Assign[worker,task]) >= 2);                                                        

solve satisfy;


