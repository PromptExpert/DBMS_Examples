-- (Q34) Find the average age of sailors for each rating level that has at least two sailors.

use dbms_exercises;

SELECT S.rating, AVG(S.age)
FROM Sailors S
GROUP BY S.rating 
HAVING COUNT(*) > 1

/* result
rating  AVG(S.age)
7   40
8   40.5
10  25.5
3   44.5
*/