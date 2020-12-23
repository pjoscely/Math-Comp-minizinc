include "cumulative.mzn";

int: n; % number of jobs;
set of int: OBJECTS = 1..n;
array[OBJECTS] of int: duration; % duration for job
array[OBJECTS] of int: mechanics; % number of mechanics
array[OBJECTS] of int: assistants; % number of cooks required

int: available_time;
int: available_mechanics;
int: available_assistants;

array[OBJECTS] of var 0..available_time: start;
var 0..available_time: end;

constraint cumulative(start, duration, mechanics, available_mechanics);
constraint cumulative(start, duration, assistants,  available_assistants);
 
constraint forall(o in OBJECTS)(start[o] +duration[o] <= end);

solve minimize end;

output [ "start = ", show(start), "\nend = ", show(end), "\n"];