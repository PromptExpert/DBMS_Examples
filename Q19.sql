-- (Q19) Find the sids of all sailors who have reserved red boats but not green boats.
-- mysql has not EXCEPT 
use dbms_exercises;

SELECT S.sid
FROM Sailors S, Reserves R, Boats B
WHERE S.sid = R.sid 
  AND R.bid = B.bid 
  AND B.color = 'red' 
  AND S.sid NOT IN
                (SELECT S2.sid
                FROM Sailors S2, Reserves R2, Boats B2
                WHERE S2.sid = R2.sid AND R2.bid = B2.bid AND B2.color = 'green')

/* result
sid
64
*/