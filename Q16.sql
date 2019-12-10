-- (Q16) Find the sids of sailors who have reserved a red boat.

use dbms_exercises;

SELECT R.sid
FROM Reserves R, Boats B 
WHERE R.bid = B.bid and B.color='red'

/* result
sid
22
22
31
31
64
*/