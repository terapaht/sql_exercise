1
select distinct Rating
from Movies;

2
select *
from Movies
where Rating is NULL;

3
select *
from MovieTheaters
where Movie is NULL;

4
select *
from MovieTheaters left join Movies
on MovieTheaters.Movie = Movies.Code;

5
select *
from Movies left join MovieTheaters 
on MovieTheaters.Movie = Movies.Code;

6
select Title
from Movies
where Code not in
(select Movie 
from MovieTheaters
where Movie is not NULL);

7
insert into Movie(Title,Rating) values('One, Two, Three',NULL);

8
update Movies set Rating = 'G' where Rating is null;

9
delete from MovieTheaters where Movie in
(select Code from Movie where Rating = "NC-17");