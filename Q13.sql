-- (Q13) Find the sailor name, boat id, and reservation date for each reservation.

use dbms_exercises;

SELECT S.sname, R.bid, R.day 
FROM Sailors S, Reserves R
WHERE S.sid = R.sid 

/* result
sname   bid day
Dustin  101 1998-10-10
Dustin  102 1998-10-10
Dustin  103 1998-10-08
Dustin  104 1998-10-07
Lubber  102 1998-11-10
Lubber  103 1998-11-06
Lubber  104 1998-11-12
Horatio 101 1998-09-05
Horatio 102 1998-09-08
Horatio 103 1998-09-08
*/