-- (Q18) Find the ages of sailors whose name begins and ends with B and has at least three characters.

use dbms_exercises;

SELECT S.age
FROM Sailors S
WHERE S.sname LIKE 'B_%B'

/* result
age
63.5
*/