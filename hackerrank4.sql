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
select h.hacker_id, h.name
from submissions s
inner join challenges c
on s.challenge_id = c.challenge_id
inner join difficulty d
on c.difficulty_level = d.difficulty_level 
inner join hackers h
on s.hacker_id = h.hacker_id
where s.score = d.score and c.difficulty_level = d.difficulty_level
group by h.hacker_id, h.name
having count(s.hacker_id) > 1
order by count(s.hacker_id) desc, s.hacker_id asc

-- Ollivander's Inventory (https://www.hackerrank.com/challenges/harry-potter-and-wands/problem )
-- not finished select Wands.id, Wands_Property.age, Wands.coins_needed, Wands.power
from Wands
join Wands_Property
on Wands.code = Wands_Property.code
where Wands_Property.is_evil = 0
and Wands.coins_needed = (select min(coins_needed) 
from Wands as w1 
join Wands_Property as p1 
on (w1.code = p1.code) 
where w1.power = Wands.power and p1.age = Wands_Property.age)
order by 4 desc, Wands_Property.age desc;

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
