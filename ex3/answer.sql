-- 1 Show all the distinct ratings in the database.
SELECT DISTINCT Rating FROM Movies;

-- 2 Show all unrated movies.
SELECT * FROM Movies WHERE Rating IS NULL;

-- 3 Select all movie theaters that are not currently showing a movie.
SELECT * FROM MovieTheaters WHERE Movie IS NULL;

-- 4 Select all data from all movie theaters and, additionally, the data from the movie that is being shown in the theater (if one is being shown).
SELECT * FROM MovieTheaters mt,Movies m WHERE mt.Movie = m.Code 
UNION SELECT * FROM MovieTheaters mt LEFT JOIN Movies m ON mt.Movie = m.Code WHERE mt.Movie IS NULL;

-- 5 Select all data from all movies and, if that movie is being shown in a theater, show the data from the theater.
SELECT m.*,mt.* FROM MovieTheaters mt,Movies m WHERE mt.Movie = m.Code
UNION SELECT m.*,mt.* FROM Movies m LEFT JOIN MovieTheaters mt ON mt.Movie = m.Code WHERE mt.Movie IS NULL;

-- 6 Show the titles of movies not currently being shown in any theaters.
SELECT Title FROM Movies WHERE Code NOT IN (SELECT mt.Movie FROM MovieTheaters mt,Movies m WHERE mt.Movie = m.Code);

-- 7 Add the unrated movie "One, Two, Three".
 INSERT INTO Movies(Code,Title,Rating) VALUES(9,'One',NULL);
 INSERT INTO Movies(Code,Title,Rating) VALUES(10,'Two',NULL);
 INSERT INTO Movies(Code,Title,Rating) VALUES(11,'Three',NULL);

-- 8 Set the rating of all unrated movies to "G".
UPDATE Movies SET Rating = 'G' WHERE Rating IS NULL;

-- 9 Remove movie theaters projecting movies rated "NC-17".
DELETE FROM MovieTheaters WHERE Movie = (SELECT Code FROM Movies WHERE Rating = 'NC-17'); 
