--  https://www.hackerrank.com/challenges/revising-the-select-query/problem
SELECT 
    *
FROM
    city
WHERE
    population > 100000
        AND CountryCode = 'USA';

--  Revising the Select Query II
SELECT 
    name
FROM
    city
WHERE
    population > 120000
        AND CountryCode = 'USA';

--  Select All
SELECT 
    *
FROM
    city;

-- Select By ID
SELECT 
    *
FROM
    city
WHERE
    id = 1661;

--  Japanese Cities' Attributes
SELECT 
    *
FROM
    city
WHERE
    countrycode = 'JPN';

--  Japanese Cities' Names
SELECT 
    name
FROM
    city
WHERE
    countrycode = 'JPN';

-- Weather Observation Station 1
SELECT 
    city, state
FROM
    station;

-- Weather Observation Station 3 (finding even numbers)
SELECT DISTINCT
    city
FROM
    station
WHERE
    (id % 2) = 0
ORDER BY 1;

-- Weather Observation Station 4
SELECT 
    COUNT(city) - COUNT(DISTINCT city)
FROM
    station;

-- Weather Observation Station 5 (LENGHT(), finding the length of a string)
SELECT 
    city, LENGTH(city)
FROM
    station
ORDER BY LENGTH(city) , city ASC
LIMIT 1;

SELECT 
    city, LENGTH(city)
FROM
    station
ORDER BY LENGTH(city) DESC
LIMIT 1;

-- Weather Observation Station 6 (finding city names starting with vowels)
SELECT DISTINCT
    city
FROM
    station
WHERE
    city LIKE 'a%' OR city LIKE 'e%'
        OR city LIKE 'i%'
        OR city LIKE 'o%'
        OR city LIKE 'u%';

-- Weather Observation Station 7 (finding city names ending with vowels)
SELECT DISTINCT
    city
FROM
    station
WHERE
    city LIKE '%a' OR city LIKE '%e'
        OR city LIKE '%i'
        OR city LIKE '%o'
        OR city LIKE '%u';

-- Weather Observation Station 8 (REGEXP, finding owels (i.e., a, e, i, o, AND u) as both their first AND last characters)
SELECT DISTINCT
    city
FROM
    STATION
WHERE
    city REGEXP '^[aeiou].*[aeiou]$';

-- Weather Observation Station 9 (finding names that do NOT start with vowels)
SELECT DISTINCT
    city
FROM
    station
WHERE
    NOT city REGEXP '^[aeiou]';

-- Weather Observation Station 10 (finding names that do NOT end with vowels)
SELECT DISTINCT
    city
FROM
    station
WHERE
    NOT city REGEXP '[aeiou]$';

-- Weather Observation Station 11 (finding names that either do NOT start with vowels OR do NOT end with vowels)
SELECT DISTINCT
    city
FROM
    station
WHERE
    NOT city REGEXP '[aeiou]$'
        OR NOT city REGEXP '^[aeiou]';

-- Weather Observation Station 12 (finding names that either do NOT start with vowels AND do NOT end with vowels)
SELECT DISTINCT
    city
FROM
    station
WHERE
    NOT city REGEXP '[aeiou]$'
        AND NOT city REGEXP '^[aeiou]';

-- Higher Than 75 Marks (RIGHT(), ORder output by the last three characters of each name)
SELECT 
    NAME
FROM
    students
WHERE
    marks > 75
ORDER BY RIGHT(NAME, 3) , ID ASC;

-- Employee Names (ORder names in alphabetical ORder)
SELECT 
    name
FROM
    employee
ORDER BY 1 ASC;

-- Employee Salaries
SELECT 
    name
FROM
    employee
WHERE
    salary > 2000 AND months < 10
ORDER BY employee_id ASC;
