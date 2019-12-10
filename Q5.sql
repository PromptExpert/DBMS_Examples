-- (Q5) Find the names of sailors who have reserved a red or a green boat.

/* relational algebra
sigma :: selection
pi :: projection 
x :: natural join

pi_sname(sigma_{color = 'red' or color = 'green'}Boats x Reserves x Sailors)
*/

use dbms_exercises;

SELECT S.sname 
FROM Sailors S, Reserves R , Boats B
WHERE (B.color = 'red' OR B.color = 'green') and R.bid = B.bid and S.sid = R.sid;

/* result
sname
Dustin
Dustin
Dustin
Lubber
Lubber
Lubber
Horatio
Horatio
*/