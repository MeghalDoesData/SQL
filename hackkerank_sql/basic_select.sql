--Revising the Select Query I
/* Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA. */

SELECT * 
from city
where countrycode = 'USA' 
and population > 100000

--Revising the Select Query II
-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

select name 
from city
where population > 120000
and countrycode = 'USA'

-- Select all  
--Query all columns (attributes) for every row in the CITY table.
SELECT * from city

--select by ID
--Query all columns for a city in CITY with the ID 1661.
select * 
from city
where id = 1661

--Japanese Cities Attributes
--Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
select * 
from city
where countrycode = 'JPN'

--Japanese Cities Name
--Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT name 
from city
where countrycode = 'JPN'

--Weather Observation Station 1
--Query a list of CITY and STATE from the STATION table.

select city,state
from station

--Weather Observation Station 3
--Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.

select distinct city
from station
where id%2 = 0

--Weather Observation Station 4
--Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

select count(city) - count(distinct city) as diff
from station

--Weather Observation Station 5
--Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name).
--If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

SELECT city, length(city) as len
from station
order by len, city limit 1;

SELECT city, length(city) as len
from station
order by len desc, city limit 1

--Weather Observation Station 6
--Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.

SELECT DISTINCT CITY
FROM STATION
WHERE SUBSTR(UPPER(CITY), 1, 1) IN ('A', 'E', 'I', 'O', 'U');

--Alternate

select CITY
from STATION
where city regexp('^[aeiou]')

--Weather Observation Station 7
--Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
  
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[aeiouAEIOU]$';

--Weather Observation Station 8
--Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) 
--as both their first and last characters. Your result cannot contain duplicates.

SELECT city
from station
where regexp_like(city,'^[aeiou].*[aeiou]$')

--Weather Observation Station 9
--Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

SELECT DISTINCT city
FROM station
WHERE city NOT REGEXP '^[AEIOUaeiou]';

-- Weather Station 10
--Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

SELECT distinct city
from station
where not city regexp '[aeiouAEIOU]$'

-- Weather Station 11
--Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

select DISTINCT city
from station
where city not REGEXP '^[aeiouAEIOU]' or city not REGEXP '[aeiouAEIOU]$';

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[aeiouAEIOU]' OR CITY NOT REGEXP '[aeiouAEIOU]$';

--Weather Station 12
--Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
select distinct city
from station
where city not REGEXP '^[aeiouAEIOU]' and city not REGEXP '[aeiouAEIOU]$'

--Higher Than 75 Marks
--Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

select name 
from students
where marks >75
order by right(name,3), id asc;

-- Employee Names
--Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

SELECT name 
from employee
order by name

--Write a query that prints a list of employee names (i.e.: the name attribute) 
--for employees in Employee having a salary greater than  per month who have been employees for less than  months. 
--Sort your result by ascending employee_id.

select name 
from employee
where months < 10 and salary >2000
order by employee_id



