/*

Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
The STATION table is described as follows:

where LAT_N is the northern latitude and LONG_W is the western longitude.

For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', there are 2 different city names: 'New York' and 'Bengalaru'. The query returns , because 

total number of records - number of unique city names = 3 - 2  = 1

*/

/*
Enter your query here.
*/
SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION
;

/*

UNION
2

SELECT c1
, c2
FROM
(SELECT ID
 COUNT(CITY) AS c1
FROM STATION
UNION
SELECT ID
, COUNT(CITY) AS c2
FROM
(SELECT DISTINCT
CITY
FROM STATION
ORDER BY 1
)) AS t1

*/
