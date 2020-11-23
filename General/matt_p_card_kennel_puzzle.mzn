/* 
MPMP17: ARRANGING CATS AND DOGS PUZZLE
How many ways can you completely fill your ten kennels, 
using only cats and dogs (one animal per kennel), 
such that no two cats are in adjacent kennels?
*/

% enumerated data type
enum pets = {cat,dog};

% kennel of size 10
array[1..10] of var pets: kennel;

% no adjacent cats
constraint forall(i in 1..9)((kennel[i] = cat) -> (kennel[i+1] != cat));

solve satisfy;

% 144 solutions
/*
[cat, dog, cat, dog, cat, dog, cat, dog, cat, dog])
[dog, dog, cat, dog, cat, dog, cat, dog, cat, dog])
[dog, cat, dog, dog, cat, dog, cat, dog, cat, dog]);
. . .
[dog, dog, dog, dog, dog, dog, dog, dog, dog, cat])
[cat, dog, dog, dog, dog, dog, dog, dog, dog, dog])
[dog, dog, dog, dog, dog, dog, dog, dog, dog, dog])
*/
