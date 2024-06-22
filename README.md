PROJECT 1: LYFT TRIP DATA
Here are the tasks required for this project:

Suppose you are a Data Analyst at Lyft, a ride-sharing platform. For a project, you were given three tables:

trips: trips information
riders: user data
cars: autonomous cars
Have fun!

Tasks
10/10 complete
Mark the tasks as complete by checking them off
Write the following queries:
1.
Let’s examine the three tables.

SELECT * FROM trips;

SELECT * FROM riders;

SELECT * FROM cars;

What are the column names?

2.
What’s the primary key of trips?

What’s the primary key of riders?

What’s the primary key of cars?

3.
Try out a simple cross join between riders and cars.

Is the result useful?

4.
Suppose we want to create a Trip Log with the trips and its users.

Find the columns to join between trips and riders and combine the two tables using a LEFT JOIN.

Let trips be the left table.

5.
Suppose we want to create a link between the trips and the cars used during those trips.

Find the columns to join on and combine the trips and cars table using an INNER JOIN.

6.
The new riders data are in! There are three new users this month.

Stack the riders table on top of the new table named riders2.

Bonus: Queries and Aggregates
7.
What is the average cost for a trip?

8.
Lyft is looking to do an email campaign for all the irregular users.

Find all the riders who have used Lyft less than 500 times!

9.
Calculate the number of cars that are active.

10.
It’s safety recall time for cars that have been on the road for a while.

Write a query that finds the two cars that have the highest trips_completed.





PROJECT 2: NEW YORK RESTAURANTS
New York Restaurants
We have put together a table of restaurants called nomnom and we need your help to answer some questions. Use the SQL commands you just learned and find the best dinner spots in the city.

The schema of this table is available here.

Let’s begin!

Tasks
12/12 complete
Write the following queries:
1.
Start by getting a feel for the nomnom table:

SELECT *
FROM nomnom;

What are the column names?

2.
What are the distinct neighborhoods?

3.
What are the distinct cuisine types?

4.
Suppose we would like some Chinese takeout.

What are our options?

5.
Return all the restaurants with reviews of 4 and above.

6.
Suppose Abbi and Ilana want to have a fancy dinner date.

Return all the restaurants that are Italian and $$$.

7.
Your coworker Trey can’t remember the exact name of a restaurant he went to but he knows it contains the word ‘meatball’ in it.

Can you find it for him using a query?

8.
Let’s order delivery to the house!

Find all the close by spots in Midtown, Downtown or Chinatown.

(OR can be used more than once)

9.
Find all the health grade pending restaurants (empty values).

10.
Create a Top 10 Restaurants Ranking based on reviews.

11.
Use a CASE statement to change the rating system to:

review > 4.5 is Extraordinary
review > 4 is Excellent
review > 3 is Good
review > 2 is Fair
Everything else is Poor
Don’t forget to rename the new column!





PROJECT 3: Analyze Hacker News Trends

In this project, you will be working with a table named hacker_news that contains stories from Hacker News since its launch in 2007. It has the following columns:

title: the title of the story
user: the user who submitted the story
score: the score of the story
timestamp: the time of the story
url: the link of the story
This data was kindly made publicly available under the MIT license.

Let’s get started!

Tasks
11/11 complete

1.
Start by getting a feel for the hacker_news table!

Let’s find the most popular Hacker News stories:

SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;

What are the top five stories with the highest scores?

Hacker News Moderating
2.
Recent studies have found that online forums tend to be dominated by a small percentage of their users (1-9-90 Rule).

Is this true of Hacker News?

Is a small percentage of Hacker News submitters taking the majority of the points?

First, find the total score of all the stories.

3.
Next, we need to pinpoint the users who have accumulated a lot of points across their stories.

Find the individual users who have gotten combined scores of more than 200, and their combined scores.

GROUP BY and HAVING are needed!

4.
Then, we want to add these users’ scores together and divide by the total to get the percentage.

Add their scores together and divide it by the total sum. Like so:

SELECT (1.0 + 2.0 + 3.0) / 6.0;

So, is Hacker News dominated by these users?

5.
Oh no! While we are looking at the power users, some users are rickrolling — tricking readers into clicking on a link to a funny video and claiming that it links to information about coding.

The url of the video is:

https://www.youtube.com/watch?v=dQw4w9WgXcQ

How many times has each offending user posted this link?

Which sites feed Hacker News?
6.
Hacker News stories are essentially links that take users to other websites.

Which of these sites feed Hacker News the most:

GitHub, Medium, or New York Times?


7.
Next, build on the previous query:

Add a column for the number of stories from each URL using COUNT().

Also, GROUP BY the CASE statement.

Remember that you can refer to a column in GROUP BY using a number.

What's the best time to post a story?

8.
Every submitter wants their story to get a high score so that the story makes it to the front page, but…

What’s the best time of the day to post a story on Hacker News?

Before we get started, let’s run this query and take a look at the timestamp column:

SELECT timestamp
FROM hacker_news
LIMIT 10;

Notice that the values are formatted like:

2018-05-08T12:30:00Z

If you ignore the T and Z, the format is:

YYYY-MM-DD HH:MM:SS

9.
SQLite comes with a strftime() function - a very powerful function that allows you to return a formatted date.

It takes two arguments:

strftime(format, column)

Let’s test this function out:

SELECT timestamp,
   strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

What do you think this does? Open the hint if you’d like to learn more.

10.
Okay, now we understand how strftime() works. Let’s write a query that returns three columns:

The hours of the timestamp
The average score for each hour
The count of stories for each hour
11.
Let’s edit a few things in the previous query:

Round the average scores (ROUND()).

Rename the columns to make it more readable (AS).

Add a WHERE clause to filter out the NULL values in timestamp.

Take a look at the result again:

What are the best hours to post a story on Hacker News?



PROJECT 4: TRENDS IN STARTUPS
It’s your first day as a TechCrunch reporter. Your first task is to write an article on the rising trends in the startup world.

To get you started with your research, your boss emailed you a project.sqlite file that contains a table called startups. It is a portfolio of some of the biggest names in the industry.

Write queries with aggregate functions to retrieve some interesting insights about these companies.

What are you waiting for? Let’s get started!

Tasks
14/14 complete

Write the following queries:
1.
Getting started, take a look at the startups table:

SELECT *
FROM startups;

How many columns are there?

2.
Calculate the total number of companies in the table.

3.
We want to know the total value of all companies in this table.

Calculate this by getting the SUM() of the valuation column.

4.
What is the highest amount raised by a startup?

Return the maximum amount of money raised.

5.
Edit the query so that it returns the maximum amount of money raised, during ‘Seed’ stage.

6.
In what year was the oldest company on the list founded?

Let's find out the valuations among different sectors:
7.
Return the average valuation.

8.
Return the average valuation, in each category.

9.
Return the average valuation, in each category.

Round the averages to two decimal places.

10.
Return the average valuation, in each category.

Round the averages to two decimal places.

Lastly, order the list from highest averages to lowest.

What are the most competitive markets?
11.
First, return the name of each category with the total number of companies that belong to it.

12.
Next, filter the result to only include categories that have more than three companies in them.

What are the most competitive markets?

Let's see if there's a difference in startups sizes among different locations:
13.
What is the average size of a startup in each location?

14.
What is the average size of a startup in each location, with average sizes above 500?


