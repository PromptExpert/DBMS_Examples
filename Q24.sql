-- (Q24) Find the sailors with the highest rating.

use dbms_exercises;

SELECT S.sid
FROM Sailors S
WHERE S.rating >= ALL ( SELECT S2.rating
                       FROM Sailors S2)

/* result
sid
58
71
*/