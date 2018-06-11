-- 1 Show all the distinct ratings in the database.
SELECT DISTINCT Rating FROM Movies;

-- 2 Show all unrated movies.
SELECT * FROM Movies WHERE Rating = NULL;

-- 3 Select all movie theaters that are not currently showing a movie.
SELECT * FROM MovieTheaters WHERE Movie = NULL;

-- 4 Select all data from all movie theaters and, additionally, the data from the movie that is being shown in the theater (if one is being shown).
SELECT * FROM MovieTheaters mt JOIN Movies m ON mt.Movie = m.Code;

-- 5 Select all data from all movies and, if that movie is being shown in a theater, show the data from the theater.


-- 6 Show the titles of movies not currently being shown in any theaters.


-- 7 Add the unrated movie "One, Two, Three".


-- 8 Set the rating of all unrated movies to "G".


-- 9 Remove movie theaters projecting movies rated "NC-17".

