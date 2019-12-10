-- (Q2) Find the names of sailors who have reserved a red boat.

/* relational algebra
sigma :: selection
pi :: projection 
x :: natural join

pi_sname(Sailors x sigma_{B.color='red'}(Reserves x Boats))
*/
use dbms_exercises;

SELECT S.sname
FROM Sailors S, Reserves R , Boats B
WHERE R.bid = B.bid and B.color = 'red' and S.sid = R.sid;

/* result
sname
Dustin
Dustin
Lubber
Lubber
Horatio
*/