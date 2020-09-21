-- World Populations SQL Practice II on Codecademy.com https://www.codecademy.com/practice/projects/world-populations-sql-practice-ii

-- 3. How many entries in the countries table are from Africa? Answer: 56.
select count (*)
from countries
where continent = 'Africa';

-- 4. What was the total population of the continent of Oceania in 2005? Answer: 32.66 millions.
select round(sum(population), 2) as 'Total Population of Oceania in 2005 (in millions)'
from countries
join population_years
on countries.id = population_years.country_id
where continent = 'Oceania'
and year = '2005';

-- -- 5. What is the average population of countries in South America in 2003? Answer: 25.89 millions. 
select round(avg(population), 2) as 'Average Population of countries in South America in 2003 (in millions)'
from countries
join population_years
on countries.id = population_years.country_id
where continent = 'South America'
and year = '2003';

-- 6. What country had the smallest population in 2007? Answer: Niue.
select name, min(population) as 'Population in millions (2007)'
from countries
join population_years
on countries.id = population_years.country_id
where year = '2007';

-- -- 7. What is the average population of Poland during the time period covered by this dataset? Answer: 38.56 millions.
select round(avg(population), 2) as 'Average Population of Poland (in millons)'
from countries
join population_years
on countries.id = population_years.country_id
where name = 'Poland';

-- 8. How many countries have the word “The” in their name? Anwer: 4. Really?
select count(*)
from countries
where name like '%The%';

-- 9. What was the total population of each continent in 2010? Answers:
-- North America: 539.79 millions.
-- South America: 396.58 millions.
-- Europe: 723.06 millions.
-- Asia: 4133.09 millions.
-- Africa: 1015.48 millions.
-- Oceania: 34.96 millions.

-- first it's needed to find out distinct continents
select distinct continent
from countries;

-- and then
select round(sum(population), 2) as 'Total Population of Countries in North America (2010)'
from countries
join population_years
on countries.id = population_years.country_id
where continent = 'North America'
and year = '2010';

select round(sum(population), 2) 'Total Population of Countries in South America (2010)'
from countries
join population_years
on countries.id = population_years.country_id
where continent = 'South America'
and year = '2010';

select round(sum(population), 2) 'Total Population of Countries in Europe (2010)'
from countries
join population_years
on countries.id = population_years.country_id
where continent = 'Europe'
and year = '2010';

select round(sum(population), 2) 'Total Population of Countries in Asia (2010)'
from countries
join population_years
on countries.id = population_years.country_id
where continent = 'Asia'
and year = '2010';

select round(sum(population), 2) 'Total Population of Countries in Africa (2010)'
from countries
join population_years
on countries.id = population_years.country_id
where continent = 'Africa'
and year = '2010';

select round(sum(population), 2) 'Total Population of Countries in Oceania (2010)'
from countries
join population_years
on countries.id = population_years.country_id
where continent = 'Oceania'
and year = '2010';

-- When checking my work I found this great solution
SELECT SUM(population), continent FROM population_years
INNER JOIN countries ON
countries.id = population_years.country_id
WHERE year = 2010
GROUP BY continent;
