/*
2013 AMC 10A Problem 7
A student must choose a program of four courses from a menu 
of courses consisting of English, Algebra, Geometry, History, 
Art, and Latin. This program must contain English and at 
least one mathematics course. 
In how many ways can this program be chosen?


(A)    6    (B)    8    (C)    9    (D)    12    (E)   16
*/

%enumerated data type of all courses
enum c = { English, Algebra, Geometry, History, Art, Latin};

%all possible subsets of courses
var set of c: possible;

%must choose a program of four courses
constraint card(possible) = 4;

%program must contain English
constraint card(possible intersect {English}) = 1;

%at least one mathematics course
constraint card(possible intersect {Algebra, Geometry}) >= 1;

solve satisfy;

%  solutions:     9
/*
possible = {English, Algebra, Geometry, History};
----------
possible = {English, Algebra, Geometry, Art};
----------
possible = {English, Algebra, Geometry, Latin};
----------
possible = {English, Algebra, History, Art};
----------
possible = {English, Algebra, History, Latin};
----------
possible = {English, Algebra, Art, Latin};
----------
possible = {English, Geometry, History, Art};
----------
possible = {English, Geometry, History, Latin};
----------
possible = {English, Geometry, Art, Latin};
*/