-- (Q33) For each red boat, find the number of reservations for this boat

use dbms_exercises;

SELECT R.bid, COUNT(R.sid)
FROM Reserves R, Boats B 
WHERE R.bid = B.bid AND B.color = 'red'
GROUP BY R.bid
/* result
bid COUNT(R.sid)
102 3
104 2
*/