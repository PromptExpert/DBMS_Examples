-- (Q25) Find the average age of all sailors.

use dbms_exercises;

SELECT AVG(S.age)
FROM Sailors S 

/* result
AVG(S.age)
36.9
*/