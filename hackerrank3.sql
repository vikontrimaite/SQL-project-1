-- https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem
-- Aggregation

-- Revising Aggregations - The Count Function
select count(name)
from city
where population > 100000;

-- Revising Aggregations - The Sum Function
select  sum(population)
from city
where District = 'California';
 
-- Revising Aggregations - Averages
 select  avg(population)
from city
where District = 'California';

-- Average Population
 select  round(avg(population))
from city;

-- Japan Population
 select  sum(population)
from city
where COUNTRYCODE = 'JPN';

-- Population Density Difference
select max(population) - min(population)
from city;

-- The Blunder ((CEILING())
SELECT ceiling(AVG(Salary)-AVG(REPLACE(Salary,'0',''))) FROM EMPLOYEES;

-- Weather Observation Station 2
select round(sum(lat_n), 2), round(sum(long_w), 2)
from STATION;

--