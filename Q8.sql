-- (Q8) Find the sids of sailors with age over 20 who have not reserved a red boat.

/* relational algebra
sigma :: selection
pi :: projection 
x :: natural join
p :: renaming
U :: union

sigma_{age > 20}(Sailors x sigma_{color != 'red'}Boats x Reserves)
*/

use dbms_exercises;

SELECT S.sname
FROM Sailors S, Reserves R, Boats B 
WHERE B.color != 'red' and B.bid = R.bid and S.sid = R.sid and S.sid > 20

/* result
sname
Dustin
Dustin
Lubber
Horatio
Horatio
*/