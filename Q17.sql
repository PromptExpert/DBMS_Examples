-- (Q17) Compute increments for the ratings of persons who have sailed two different boats on the same day

use dbms_exercises;

SELECT S.sname, S.rating+1 AS rating
FROM Sailors S, Reserves R1, Reserves R2
WHERE S.sid = R1.sid AND S.sid = R2.sid
AND R1.day = R2.day AND R1.bid != R2.bid

/* result
sname   rating
Dustin  8
Dustin  8
*/