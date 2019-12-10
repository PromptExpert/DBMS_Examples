-- (Q4) Find the names of sailors who have reserved at least one boat.

/* relational algebra
sigma :: selection
pi :: projection 
x :: natural join

pi_sname(Sailors x Reserves)
*/

use dbms_exercises;

SELECT S.sname 
FROM Sailors S, Reserves R 
WHERE S.sid = R.sid 

/* result
sname
Dustin
Dustin
Dustin
Dustin
Lubber
Lubber
Lubber
Horatio
Horatio
Horatio
*/