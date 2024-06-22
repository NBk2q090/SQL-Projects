SELECT COUNT (*)
FROM startups;

SELECT SUM (valuation)
FROM startups;

SELECT MAX (raised)
FROM startups
WHERE stage = 'Seed';

SELECT MIN (founded)
FROM startups;

SELECT AVG (valuation)
FROM startups;

SELECT AVG (valuation), category
FROM startups
GROUP BY category;

SELECT ROUND (AVG (valuation),2), category
FROM startups
GROUP BY category;


SELECT category, ROUND (AVG (valuation),2)
FROM startups
GROUP BY category
ORDER BY 2 DESC;

SELECT * from startups;

SELECT AVG (employees) AS size , location 
FROM STARTUPS
GROUP BY location;




SELECT location, AVG (employees)
FROM startups
GROUP BY location
HAVING AVG (employees) > 500;



SELECT * FROM startups;

SELECT category, COUNT (*)
FROM startups
GROUP BY category;



SELECT category, COUNT (*)
FROM startups
GROUP BY category
HAVING COUNT (*) > 3;
