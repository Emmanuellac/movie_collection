# movie_collection
collection of data from movies produced and directed from 1927-2019, using mysql-server.
This project and the data used was part of a case study which can be found here. It focuses on examining dates, series, and factors influencing movie productions in order to gain insights into their, production maangement, total revenue spent and earned from a movie/series and potential areas for improvement in movie directing or marketing strategies in a dining establishment.

Background
this is a collection of movies from 1927-2019 from different director and stars,with the aim of making movie production versatile and good quality viewing for people.

Problem Statement
I want to use the data to answer a few simple questions about movies, especially about their visiting patterns, how much money they’ve spent and also which movies are peoples favorite. Having this deeper connection with directors and stars will help  deliver a better and more personalized experience for views.
I plans on using these insights to help Directors decide whether we should expand our movie production yearly or monthly loyalty,additionally it will help to generate some basic datasets so to document and keep record of movies without needing to use SQL.
i have been provided with a sample of overall movies with date,directors,runtimes,no of votes and money made.data due to privacy issues - we hope that these examples are enough for you to write fully functioning SQL queries to help him answer his questions!

Skills Applied
Window Functions
union join
Aggregations
Write scripts to generate basic reports that can be run every period

Questions Explored
1. first movie to be released.
2. movie with the higest no of votes.
3. series with the longest runtime and director.
4. directors with the highest no of movies.
5. movies with the highest earning.
6. most released year by decending order.
7. stars with highest role in movies.

Some interesting queries
series with the longest runtime and director?/*

SELECT series_title, director, MAX(runtime) AS longest_runtime
FROM imdb_top_1000
GROUP BY series_title, director
ORDER BY longest_runtime DESC;

stars with highest roles in movies?

SELECT star, SUM(star_count) AS total_star_count
FROM (
    SELECT star1 AS star, COUNT(*) AS star_count FROM imdb_top_1000 GROUP BY star1
    UNION ALL
    SELECT star2 AS star, COUNT(*) AS star_count FROM imdb_top_1000 GROUP BY star2
    UNION ALL
    SELECT star3 AS star, COUNT(*) AS star_count FROM imdb_top_1000 GROUP BY star3
    UNION ALL
    SELECT star4 AS star, COUNT(*) AS star_count FROM imdb_top_1000 GROUP BY star4
) AS stars
GROUP BY star
ORDER BY total_star_count DESC;

Insights
1.'Robert De Niro', has the heighest movie role with 7 apperance.
2.2014 is the year with the most released movie by 8 count
3.'Schindler\'s List', movie with highest earning by '96,898,818.
4.'Christopher Nolan' director with highest movie by '7' count.


