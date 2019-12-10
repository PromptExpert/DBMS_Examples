-- (Q31) Find the age of the youngest sailor for each rating level.

use dbms_exercises;

SELECT S.rating, MIN(S.age)
FROM Sailors S
GROUP BY S.rating

/* result
rating  MIN(S.age)
7   35
1   33
8   25.5
10  16
9   35
3   25.5
*/