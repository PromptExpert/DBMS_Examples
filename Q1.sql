-- (Q1) Find the names of sailors who have reserved boat 103.

/* relational algebra
sigma :: selection
pi :: projection 
x :: natural join

pi_sname(sigma_{bid=103}(Reserves x Sailors))
*/
use dbms_exercises;

SELECT S.sname
FROM Sailors S, Reserves R 
WHERE S.sid = R.sid and R.bid=103;

/* result
sname
Dustin
Lubber
Horatio
*/