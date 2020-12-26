int: jobs = 5;                                % no of jobs
set of int: JOB = anon_enum(5);
int: tasks = 5;                               % no of tasks per job
set of int: TASK = anon_enum(5);
% task durations
array [JOB,TASK] of int: d= [| 1, 4, 5, 3, 6 
                             | 3, 2, 7, 1, 2
                             | 4, 4, 4, 4, 4  
                             | 1, 1, 1, 6, 8
                             | 7, 3, 2, 2, 1 |];
                   
int: total = sum(i in JOB, j in TASK)(d[i,j]);% total duration
int: digs = ceil(log(10.0,total));            % digits for output
array [JOB,TASK] of var 0..total: s;          % start times
var 0..total: end;                            % total end time

% nooverlap
predicate no_overlap(var int:s1, int:d1, var int:s2, int:d2) =
    s1 + d1 <= s2 \/ s2 + d2 <= s1;

constraint %% ensure the tasks occur in sequence
    forall(i in JOB) (
        forall(j in 1..tasks-1) 
            (s[i,j] + d[i,j] <= s[i,j+1]) /\
        s[i,tasks] + d[i,tasks] <= end
    );

constraint %% ensure no overlap of tasks
    forall(j in TASK) (
        forall(i,k in JOB where i < k) (
            no_overlap(s[i,j], d[i,j], s[k,j], d[k,j])
        )
    );

solve minimize end;

output ["end = \(end)\n"] ++
       [ show_int(digs,s[i,j]) ++ " " ++ 
         if j == tasks then "\n" else "" endif |
         i in JOB, j in TASK ];
/*
end = 30
 5  9 13 18 21 
 6 13 18 25 27 
 1  5  9 13 17 
 0  1  2  3  9 
 9 16 25 27 29
*/