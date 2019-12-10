-- (Q20) Find all sids of sailors who have a rating of 10 or have reserved boat 104.

-- ALL UNOIN 重复并集
-- UNION 并集
use dbms_exercises;

SELECT S.sid
FROM Sailors S 
WHERE S.rating = 10
UNION
SELECT R.sid
FROM Reserves R 
WHERE R.bid = 104

/* result
sid
58
71
22
31
*/