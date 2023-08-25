CREATE DATABASE movies;

USE movies;

select * from imdb_top_1000;


/*1.first movies to be released?*/

SELECT series_title, MIN(Released_year) AS FIRST_Released_MOVIE
FROM imdb_top_1000 
GROUP BY series_title
ORDER BY  FIRST_Released_MOVIE ASC
LIMIT 1;

/*2.movie with the highest no_of_vote?*/

 SELECT series_title,MAX(no_of_votes) AS higest_no_of_votes
 FROM imdb_top_1000
 GROUP BY series_title
 ORDER BY higest_no_of_votes DESC
 limit 1;

3.series with the longest runtime and director?/*

SELECT series_title, director, MAX(runtime) AS longest_runtime
FROM imdb_top_1000
GROUP BY series_title, director
ORDER BY longest_runtime DESC;

--4.directors with the highest number of movies?/*

SELECT director, COUNT(*) AS number_of_movies
FROM imdb_top_1000
GROUP BY director
ORDER BY number_of_movies DESC;
 
 --5.movies with the highest earning?
 
 SELECT series_title, MAX(gross) AS highest_earned
 FROM imdb_top_1000
 GROUP BY series_title
 ORDER BY highest_earned DESC;

--6.MOST RELEASED YEAR BY DESENDING?

SELECT released_year, COUNT(*) AS most_released_year
FROM imdb_top_1000
GROUP BY released_year
ORDER BY most_released_year DESC

-7.stars with highest roles in movies?

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




