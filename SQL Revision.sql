CREATE DATABASE Movies;

-- Check the content the database
USE Movies;

SELECT * FROM movie;
--write a  SQL query to find the name and year of the movies. Return movie title, movie release year.
SELECT mov_title,Mov_dt_rel FROM movie;

--write a SQL query to find when the movie 'Annie Hall' released. Return movie release year.

SELECT mov_dt_rel FROM movie WHERE mov_title='Annie Hall';

--write a SQL query to find the movie that was released in 1999. Return movie title.
SELECT mov_title FROM movie WHERE mov_year=1999;

--write a SQL query to find those movies, which were released before 1998. Return movie title.
SELECT mov_title,mov_year FROM movie WHERE mov_year<1998;

--write a  SQL query to find the name of all reviewers and movies together in a single list.
Select * from Reviewer;
select * from rating;


 --write a SQL query to find the movies with ID 905 or 907 or 917. Return movie title.
 SELECT mov_title,mov_id FROM movie WHERE mov_id IN(905,907,917);--ALLOWS YOU TO SPECIFY MULTIPLE VALUES IN A WHERE CLAUSE 


 -
 SElect * from movie;
 select * from actor
 select * from genre
 select * from director;
 select * from movies_genres;
 select * from movie_director;

 --write a SQL query to find the director of a film that cast a role in 'Eyes Wide Shut'. Return director first name, last name.
 SELECT d.dir_fname,d.dir_lname,dm.dir_id,m.mov_title FROM director d
 inner join movie_director dm ON  dm.dir_id=d.dir_id
 inner join movie m ON m.mov_id =dm.mov_id
 where m.mov_title='Eyes Wide Shut';

 --write a SQL query to find all reviewers who have rated seven or more stars to their rating. Return reviewer name.
 select * FROM Reviewer;
 select * from rating;
 SELECT r.rev_name,t.rev_stars from reviewer r LEFT JOIN rating t ON r.rev_id= t.rev_id;

 --write a  SQL query to find the name of all reviewers and movies together in a single list.
 select * FROM Movie
 SELECT r.rev_name,m.mov_title,t.rev_stars FROM rating t RIGHT JOIN Reviewer r ON r.rev_id=t.rev_id
 JOIN movie m ON m.mov_id=t.mov_id;

