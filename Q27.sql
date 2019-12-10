-- (Q27) Find the name and age of the oldest sailor.

use dbms_exercises;

SELECT S.sname, S.age
FROM Sailors S
WHERE S.age=(SELECT MAX(S2.age)
             FROM Sailors S2 )

/* result
sname   age
Bob 63.5
*/