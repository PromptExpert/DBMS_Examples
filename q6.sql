-- (Q6) Find the names of sailors who have reserved a red and a green boat. 

/* relational algebra
sigma :: selection
pi :: projection 
x :: natural join
p :: renaming
U :: union

p(Tempred, pi_sid(sigma_{color = 'red'}Boats x Reserves))
p(Tempgreen, pi_sid(sigma_{color = 'green'}Boats x Reserves))
pi_sname((Tempred U Tempgreen) x Sailors) 

*/

use dbms_exercises;

SELECT S.sname
FROM Sailors S, Reserves R1, Boats B1, Reserves R2, Boats B2
WHERE S.sid = R1.sid 
      AND R1.bid = B1.bid
      AND S.sid = R2.sid 
      AND R2.bid = B2.bid
      AND B1.color= 'red'
      AND B2.color = 'green'

/* result
sname
Dustin
Dustin
Lubber
Lubber
*/