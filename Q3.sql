-- (Q3) Find the colors of boats reserved by Lubber.

/* relational algebra
sigma :: selection
pi :: projection 
x :: natural join

pi_color(sigma_{sname = 'Lubber'}(Sailors x Reserves) x Boats)
*/

use dbms_exercises;

SELECT B.color
FROM Sailors S, Reserves R, Boats B
WHERE S.sname = 'Lubber' and S.sid = R.sid and R.bid = B.bid;

/* result
color
red
green
red
*/