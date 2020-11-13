include "alldifferent.mzn";

% initial board 0 = empty
array[1..4,1..4] of 0..4: clues; 

% partially filled clue board
clues =  [|0,4,0,0|
          0,0,4,0|
          0,0,0,2|
          1,0,0,0|];   

% 4 x 4 board to be solved
array[1..4,1..4] of var 1..4: sudoku;

% initialize sudoku board
constraint forall(i,j in 1..4)(
    if clues[i,j] > 0 then sudoku[i,j] = clues[i,j] else true endif );

% All different in rows 
constraint forall (i in 1..4) (
                   alldifferent( [ sudoku[i,j] | j in 1..4 ]) ); 

% All different in columns.
constraint forall (j in 1..4) (
                   alldifferent( [ sudoku[i,j] | i in 1..4]) ); 

% All different in sub-squares:
constraint
        forall (a, o in 1..2)(
                alldifferent( [ sudoku[(a-1) *2 + a1, (o-1)*2 + o1] |
                                        a1, o1 in 1..2 ] ) );
solve satisfy;

output  [show(sudoku)];

%[3, 4, 2, 1, 2, 1, 4, 3, 4, 3, 1, 2, 1, 2, 3, 4]