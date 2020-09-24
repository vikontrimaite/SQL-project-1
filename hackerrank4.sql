-- https://www.hackerrank.com/challenges/asian-population/problem
-- Basic Join

SELECT 
    SUM(city.population) AS 'total population of Asia'
FROM
    city
        JOIN
    country ON CITY.CountryCode = COUNTRY.Code
WHERE
    CONTINENT = 'Asia';

-- African Cities
SELECT 
    city.name
FROM
    city
        JOIN
    country ON CITY.CountryCode = COUNTRY.Code
WHERE
    CONTINENT = 'Africa';

-- Average Population of Each Continent (FLOOR())
SELECT 
    COUNTRY.Continent, FLOOR(AVG(CITY.Population))
FROM
    city
        JOIN
    country ON CITY.CountryCode = COUNTRY.Code
GROUP BY 1;

-- The Report (Inner JOIN with ON with BETWEEN)
SELECT 
    CASE
        WHEN grades.grade >= 8 THEN Students.name
        WHEN grades.grade < 8 THEN NULL
    END,
    grades.grade,
    students.marks
FROM
    Students
        JOIN
    grades ON Students.Marks BETWEEN Grades.Min_Mark AND Max_Mark
ORDER BY grades.grade DESC , Students.name ASC , Students.Marks ASC;

-- Top Competitors
SELECT 
    h.hacker_id, h.name
FROM
    submissions s
        INNER JOIN
    challenges c ON s.challenge_id = c.challenge_id
        INNER JOIN
    difficulty d ON c.difficulty_level = d.difficulty_level
        INNER JOIN
    hackers h ON s.hacker_id = h.hacker_id
WHERE
    s.score = d.score
        AND c.difficulty_level = d.difficulty_level
GROUP BY h.hacker_id , h.name
HAVING COUNT(s.hacker_id) > 1
ORDER BY COUNT(s.hacker_id) DESC , s.hacker_id ASC;

-- Ollivander's Inventory (https://www.hackerrank.com/challenges/harry-potter-and-wands/problem )
-- not finished 
SELECT 
    Wands.id,
    Wands_Property.age,
    Wands.coins_needed,
    Wands.power
FROM
    Wands
        JOIN
    Wands_Property ON Wands.code = Wands_Property.code
WHERE
    Wands_Property.is_evil = 0
        AND Wands.coins_needed = (SELECT 
            MIN(coins_needed)
        FROM
            Wands AS w1
                JOIN
            Wands_Property AS p1 ON (w1.code = p1.code)
        WHERE
            w1.power = Wands.power
                AND p1.age = Wands_Property.age)
ORDER BY 4 DESC , Wands_Property.age DESC;

-- Challenges (https://www.hackerrank.com/challenges/challenges/problem)
-- not finished
SELECT 
    Challenges.hacker_id,
    Hackers.name,
    COUNT(Challenges.challenge_id)
FROM
    Hackers
        JOIN
    Challenges ON Hackers.hacker_id = Challenges.hacker_id
GROUP BY 1
ORDER BY 3 DESC , Hackers.hacker_id;
