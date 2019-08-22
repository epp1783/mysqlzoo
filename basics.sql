--1.Modify it to show the population of Germany

SELECT population FROM world
  WHERE name = 'Germany'
  
 --2.Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
 
 SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');
  
  --3 Which countries are not too small and not too big? BETWEEN allows 
  --range checking (range specified is inclusive of boundary values).
  --The example below shows countries with an area of 250,000-300,000 sq. km.
-- Modify it to show the country and the area for countries with an area between 200,000 and 250,000.

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000
  
  --4 Read the notes about this table. Observe the result of running this SQL command to show the name, 
  --continent and population of all countries.
  
  
  SELECT name, continent, population FROM world
  
  -5 How to use WHERE to filter records. Show the name for the countries that have a population of at least 200 million.
  --200 million is 200000000, there are eight zeros.
  
  SELECT name FROM world
WHERE population >= 200000000

--6 Show the name for the countries that have a population of at least 200 million.
--200 million is 200000000, there are eight zeros.

SELECT name FROM world
WHERE population >= 200000000

--7 Give the name and the per capita GDP for those countries with a population of at least 200 million.

SELECT name, gdp/population FROM world
WHERE population >=200000000


--8 Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions.

SELECT name country, population/1000000 pop_in_millions
FROM world
WHERE continent = 'South America'

--9 Show the countries which have a name that includes the word 'United'

SELECT name country
FROM world
WHERE name LIKE '%United%'


--10 Show the countries that are big by area or big by population. Show name, population and area.


SELECT name country, area,population
FROM world 
WHERE  population>250000000 OR area >3000000


--10

--9 Show the name and population for France, Germany, Italy

SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')

-11 Show the countries that are big by area or big by population but not both. Show name, population and area.

--Australia has a big area but a small population, it should be included.
--Indonesia has a big population but a small area, it should be included.
--Chnia has a big population and big area, it should be excluded.
--United Kingdom has a small population and a small area, it should be excluded.

SELECT name country, population ,area
FROM world
WHERE  population>250000000 XOR  area >3000000




