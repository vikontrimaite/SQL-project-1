-- https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem
-- Aggregation

SELECT 
    COUNT(name)
FROM
    city
WHERE
    population > 100000;

-- Revising Aggregations - The Sum Function
SELECT 
    SUM(population)
FROM
    city
WHERE
    District = 'California';
 
-- Revising Aggregations - Averages
SELECT 
    AVG(population)
FROM
    city
WHERE
    District = 'California';

-- Average Population
SELECT 
    ROUND(AVG(population))
FROM
    city;

-- Japan Population
SELECT 
    SUM(population)
FROM
    city
WHERE
    COUNTRYCODE = 'JPN';

-- Population Density Difference
SELECT 
    MAX(population) - MIN(population)
FROM
    city;

-- The Blunder ((CEILING())
SELECT 
    CEILING(AVG(Salary) - AVG(REPLACE(Salary, '0', '')))
FROM
    EMPLOYEES;

-- Weather Observation Station 2
SELECT 
    ROUND(SUM(lat_n), 2), ROUND(SUM(long_w), 2)
FROM
    STATION;