--Show all the distinct ratings in the database.
select distinct rating from movies;

--Show all unrated movies.
select * from movies where rating is not null;

--Select all movie theaters that are not currently showing a movie.
select * from movietheaters where movie is null;

--Select all data from all movie theaters
--and, additionally, the data from the movie that is being shown in the theater (if one is being shown).
select * from movietheaters t left join movies m on t.movie = m.code;

--Select all data from all movies and, if that movie is being shown in a theater, show the data from the theater.
select * from movies m left join movietheaters t on t.movie = m.code;

--Show the titles of movies not currently being shown in any theaters.
select title from movies where code not in (select movie from movietheaters where movie is not null);

--Add the unrated movie "One, Two, Three".
INSERT INTO Movies(Title,Rating) VALUES('One, Two, Three',NULL);

--Set the rating of all unrated movies to "G".
update movies set rating = 'G' where rating is null;

--Remove movie theaters projecting movies rated "NC-17".
delete from movietheaters where movie in (select code from movies where rating = 'NC-17');