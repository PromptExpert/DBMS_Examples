-- (Q29) Count the number of different sailor names.

use dbms_exercises;

SELECT COUNT(DISTINCT S.sname)
FROM Sailors S

/* result
COUNT(DISTINCT S.sname)
9
*/