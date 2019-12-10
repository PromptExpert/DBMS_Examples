-- (Q30) Find the names of sailors who are older than the oldest sailor with a rating of 10.

use dbms_exercises;

SELECT S.sname
FROM Sailors S
WHERE S.age >= (SELECT MAX(S2.age) 
                FROM Sailors S2
                WHERE S2.rating=10)

/* result
sname
Dustin
Lubber
Rusty
Horatio
Horatio
Bob
*/