-- (Q7) Find the names of sailors who have reserved at least two boats.

/* relational algebra
sigma :: selection
pi :: projection 
x :: natural join
p :: renaming
U :: union

p(Reservations, pi_{sid,sname,bid}(Sailors x Reserves))
p(Reservationpairs(1 -> sid1, 2 -> sname1, 3 -> bid1,
                   4 -> sid2, 5 -> sname2, 6 -> bid2),
                   Reservations x Reservations )
pi_sname sigma_{sid1=sid2 and bid1 != bid2} Reservations

*/

use dbms_exercises;

SELECT S.sname
FROM Sailors S, Reserves R, Sailors S2, Reserves R2
WHERE S.sid = R.sid 
  and S2.sid = R2.sid 
  and S.sid = S2.sid 
  and R.bid != R2.bid

/* result
sname
Dustin
Dustin
Dustin
Dustin
Dustin
Dustin
Dustin
Dustin
Dustin
Dustin
Dustin
Dustin
Lubber
Lubber
Lubber
Lubber
Lubber
Lubber
Horatio
Horatio
*/