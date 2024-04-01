CREATE DATABASE olympics_data;
USE olympics_data;
SELECT * FROM Olympics;
SELECT Athlete, Medal FROM Olympics;
SELECT COUNT(DISTINCT Athlete) AS total_athletes FROM Olympics;
SELECT * FROM Olympics WHERE Medal = 'Gold';
SELECT Athlete FROM Olympics WHERE Medal = 'Silver' ORDER BY Year;
SELECT Country, 
       COUNT(CASE WHEN Medal = 'Gold' THEN 1 END) AS Gold,
       COUNT(CASE WHEN Medal = 'Silver' THEN 1 END) AS Silver,
       COUNT(CASE WHEN Medal = 'Bronze' THEN 1 END) AS Bronze
FROM Olympics
GROUP BY Country;
SELECT Country
FROM Olympics
WHERE Medal = 'Gold'
GROUP BY Country
HAVING COUNT(*) > 50;
SELECT o.Country, 
       COUNT(*) AS total_medals
FROM Olympics o
JOIN Countries c ON o.Country = c.Country
WHERE c.Population > 10000000
GROUP BY o.Country;
SELECT Athlete, COUNT(*) AS total_medals
FROM Olympics
GROUP BY Athlete
ORDER BY total_medals DESC
LIMIT 1;
SELECT DISTINCT Event
FROM Olympics
WHERE Event LIKE '%Freestyle%';
SELECT Sport, Athlete, COUNT(*) AS total_medals
FROM Olympics
GROUP BY Sport, Athlete
ORDER BY Sport, total_medals DESC
LIMIT 3;
SELECT Athlete, Year, COUNT(*) AS total_medals
FROM Olympics
GROUP BY Athlete, Year
HAVING COUNT(*) > 1;
SELECT Country
FROM Olympics
GROUP BY Country
HAVING COUNT(DISTINCT Season) > 1
   AND COUNT(CASE WHEN Medal = 'Gold' THEN 1 END) >= 2;
SELECT Country, MAX(Year) - MIN(Year) AS year_difference
FROM Olympics
GROUP BY Country;

SELECT Country
FROM (
  SELECT Country, COUNT(DISTINCT Sport) AS sport_count
  FROM Olympics
  GROUP BY Country
) AS country_sports
WHERE sport_count > 10;
