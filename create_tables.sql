USE dbms_exercises;
 
-- create Sailors
DROP TABLE IF EXISTS `Sailors`;
CREATE TABLE `Sailors` (
  `sid` integer NOT NULL,
  `sname` varchar(10) NOT NULL,
  `rating` integer NOT NULL,
  `age` double NOT NULL
);
INSERT INTO Sailors ( sid, sname, rating, age) 
VALUES 
( 22, 'Dustin', 7, 45.0),
( 29, 'Brutus', 1, 33.0),
( 31, 'Lubber', 8, 55.5),
( 32, 'Andy', 8, 25.5),
( 58, 'Rusty', 10, 35.0),
( 64, 'Horatio', 7, 35.0),
( 71, 'Zorba', 10, 16.0),
( 74, 'Horatio', 9, 35.0),
( 85, 'Art', 3, 25.5),
( 95, 'Bob', 3, 63.5);
/*result
+-----+---------+--------+------+
| sid | sname   | rating | age  |
+-----+---------+--------+------+
|  22 | Dustin  |      7 |   45 |
|  29 | Brutus  |      1 |   33 |
|  31 | Lubber  |      8 | 55.5 |
|  32 | Andy    |      8 | 25.5 |
|  58 | Rusty   |     10 |   35 |
|  64 | Horatio |      7 |   35 |
|  71 | Zorba   |     10 |   16 |
|  74 | Horatio |      9 |   35 |
|  85 | Art     |      3 | 25.5 |
|  95 | Bob     |      3 | 63.5 |
+-----+---------+--------+------+
*/


-- create Reserves
DROP TABLE IF EXISTS `Reserves`;
CREATE TABLE `Reserves` (
  `sid` integer NOT NULL,
  `bid` integer NOT NULL,
  `day` date NOT NULL
);
INSERT INTO Reserves ( sid, bid, day) 
VALUES 
( 22, 101, '1998-10-10'),
( 22, 102, '1998-10-10'),
( 22, 103, '1998-10-8'),
( 22, 104, '1998-10-7'),
( 31, 102, '1998-11-10'),
( 31, 103, '1998-11-6'),
( 31, 104, '1998-11-12'),
( 64, 101, '1998-9-5'),
( 64, 102, '1998-9-8'),
( 74, 103, '1998-9-8');
/* result
+-----+-----+------------+
| sid | bid | day        |
+-----+-----+------------+
|  22 | 101 | 1998-10-10 |
|  22 | 102 | 1998-10-10 |
|  22 | 103 | 1998-10-08 |
|  22 | 104 | 1998-10-07 |
|  31 | 102 | 1998-11-10 |
|  31 | 103 | 1998-11-06 |
|  31 | 104 | 1998-11-12 |
|  64 | 101 | 1998-09-05 |
|  64 | 102 | 1998-09-08 |
|  74 | 103 | 1998-09-08 |
+-----+-----+------------+
*/

-- create Boats
DROP TABLE IF EXISTS `Boats`;
CREATE TABLE `Boats` (
  `bid` integer NOT NULL,
  `bname` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL
);
INSERT INTO Boats ( bid, bname, color) 
VALUES 
(101, 'Interlake', 'blue'),
(102, 'Interlake', 'red'),
(103, 'Clipper', 'green'),
(104, 'Marine', 'red');
/*result
+-----+-----------+-------+
| bid | bname     | color |
+-----+-----------+-------+
| 101 | Interlake | blue  |
| 102 | Interlake | red   |
| 103 | Clipper   | green |
| 104 | Marine    | red   |
+-----+-----------+-------+
*/