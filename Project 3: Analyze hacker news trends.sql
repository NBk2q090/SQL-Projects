
 SELECT title, score
 FROM hacker_news
 ORDER BY score DESC
 LIMIT 5;

 SELECT title, SUM (score) AS 'Sum of Scores'
 FROM hacker_news;

SELECT user, SUM (score) as 'Users having scored > 200'
FROM hacker_news
GROUP BY user
HAVING SUM (score) > 200
ORDER by 2 DESC;


SELECT (517 + 309 + 304+ 282) / 6366.0;


SELECT user, url, timestamp
FROM hacker_news
WHERE url LIKE 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
GROUP BY 1, 3
HAVING COUNT (timestamp);

SELECT user, COUNT (*) 
FROM hacker_news
WHERE url LIKE 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
GROUP BY 1
ORDER BY COUNT (*) DESC;


SELECT CASE
  WHEN url LIKE '%github.com%' THEN 'GitHub'
  WHEN url like '%medium.com%' THEN 'Medium'
  WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
  ELSE 'Not from the 3 sources listed'
END AS 'Source',
COUNT (*)
FROM hacker_news
GROUP BY 1;

SELECT timestamp
FROM hacker_news
LIMIT 10;

SELECT timestamp, score
FROM hacker_news
GROUP BY 1, 2
ORDER BY score DESC
LIMIT 20;

SELECT timestamp, strftime ('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

SELECT timestamp, strftime ('%Y', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 5;


SELECT strftime ('%H', timestamp) AS 'Hour posted', ROUND (AVG (score), 1) AS 'Avg. Score rounded 2dp', COUNT (*) AS 'Number of stories per hr.'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;
