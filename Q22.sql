-- (Q22) Find sailors whose rating is better than some sailor called Horatio.

use dbms_exercises;

SELECT S.sid
FROM Sailors S
WHERE S.rating > ANY ( SELECT S2.rating
                       FROM Sailors S2
                       WHERE S2.sname = 'Horatio' )

/* result
sid
31
32
58
71
74
*/