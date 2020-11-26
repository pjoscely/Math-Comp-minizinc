/*
American High School Mathematics Exam 1994

Nine chairs in a row are to be occupied by 6 students and three 
professors: Alpha, Beta, and Gamma. The Professors arrive before
the students and choose their chairs so that each professor will
be between two students. In how many ways can the three
professors choose their chairs?
*/
% S = students A,B,G professors
enum p = {S, A, B, G};

% nine chairs in a row of students and  
array[1..9] of var p:c;

% six students
constraint sum([1| i in 1..9 where c[i] = S]) = 6;

% only one of each professor
constraint sum([1| i in 1..9 where c[i] = A]) = 1;
constraint sum([1| i in 1..9 where c[i] = B]) = 1;
constraint sum([1| i in 1..9 where c[i] = G]) = 1;

% students must be on the ends
constraint c[1] = S /\ c[9] = S;

% each professor will be between two students
constraint forall(i in 2..8)(c[i] = A \/ c[i] = B \/ c[i] = G -> c[i-1] = S /\ c[i+1] = S);

solve satisfy;

% display seatings 
output["valid seating: "++show(c)];

% solutions:     60  

/*
valid seating: [S, A, S, G, S, B, S, S, S]
----------
valid seating: [S, A, S, B, S, G, S, S, S]
----------
valid seating: [S, B, S, G, S, A, S, S, S]
----------
valid seating: [S, B, S, A, S, G, S, S, S]
----------
valid seating: [S, G, S, B, S, A, S, S, S]
----------
valid seating: [S, G, S, A, S, B, S, S, S]
----------
valid seating: [S, S, A, S, G, S, B, S, S]
----------
valid seating: [S, S, A, S, B, S, G, S, S]
----------
valid seating: [S, S, B, S, G, S, A, S, S]
----------
valid seating: [S, S, B, S, A, S, G, S, S]
----------
valid seating: [S, S, G, S, B, S, A, S, S]
----------
valid seating: [S, S, G, S, A, S, B, S, S]
----------
valid seating: [S, A, S, S, G, S, B, S, S]
----------
valid seating: [S, A, S, S, B, S, G, S, S]
----------
valid seating: [S, A, S, B, S, S, G, S, S]
----------
valid seating: [S, A, S, G, S, S, B, S, S]
----------
valid seating: [S, B, S, S, G, S, A, S, S]
----------
valid seating: [S, B, S, S, A, S, G, S, S]
----------
valid seating: [S, B, S, A, S, S, G, S, S]
----------
valid seating: [S, B, S, G, S, S, A, S, S]
----------
valid seating: [S, G, S, B, S, S, A, S, S]
----------
valid seating: [S, G, S, S, B, S, A, S, S]
----------
valid seating: [S, G, S, A, S, S, B, S, S]
----------
valid seating: [S, G, S, S, A, S, B, S, S]
----------
valid seating: [S, S, A, S, S, G, S, B, S]
----------
valid seating: [S, S, A, S, S, B, S, G, S]
----------
valid seating: [S, S, A, S, B, S, S, G, S]
----------
valid seating: [S, S, A, S, G, S, S, B, S]
----------
valid seating: [S, S, B, S, S, G, S, A, S]
----------
valid seating: [S, S, B, S, S, A, S, G, S]
----------
valid seating: [S, S, B, S, A, S, S, G, S]
----------
valid seating: [S, S, B, S, G, S, S, A, S]
----------
valid seating: [S, S, G, S, B, S, S, A, S]
----------
valid seating: [S, S, G, S, S, B, S, A, S]
----------
valid seating: [S, S, G, S, A, S, S, B, S]
----------
valid seating: [S, S, G, S, S, A, S, B, S]
----------
valid seating: [S, S, S, A, S, G, S, B, S]
----------
valid seating: [S, S, S, A, S, B, S, G, S]
----------
valid seating: [S, S, S, B, S, G, S, A, S]
----------
valid seating: [S, S, S, B, S, A, S, G, S]
----------
valid seating: [S, S, S, G, S, B, S, A, S]
----------
valid seating: [S, S, S, G, S, A, S, B, S]
----------
valid seating: [S, A, S, S, S, G, S, B, S]
----------
valid seating: [S, A, S, S, S, B, S, G, S]
----------
valid seating: [S, A, S, B, S, S, S, G, S]
----------
valid seating: [S, A, S, G, S, S, S, B, S]
----------
valid seating: [S, A, S, S, B, S, S, G, S]
----------
valid seating: [S, A, S, S, G, S, S, B, S]
----------
valid seating: [S, B, S, S, S, G, S, A, S]
----------
valid seating: [S, B, S, S, S, A, S, G, S]
----------
valid seating: [S, B, S, A, S, S, S, G, S]
----------
valid seating: [S, B, S, G, S, S, S, A, S]
----------
valid seating: [S, B, S, S, A, S, S, G, S]
----------
valid seating: [S, B, S, S, G, S, S, A, S]
----------
valid seating: [S, G, S, B, S, S, S, A, S]
----------
valid seating: [S, G, S, S, B, S, S, A, S]
----------
valid seating: [S, G, S, S, S, B, S, A, S]
----------
valid seating: [S, G, S, A, S, S, S, B, S]
----------
valid seating: [S, G, S, S, A, S, S, B, S]
----------
valid seating: [S, G, S, S, S, A, S, B, S]
*/



