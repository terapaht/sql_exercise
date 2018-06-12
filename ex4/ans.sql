1.
select Piece, avg(Price)
from Provides
group by Piece;

2.
select Name
from Providers
where Code in
(select Provider
from Provides
where Piece = 1);

3.
select Name
from Pieces
where Code in
(select Piece
from Provides
where Provider = 'HAL');

4.
insert into Provides values (1,'TNBC',7);

5.
update Provides set Price = Price + 1;

6.
delete from Provides where Provider = 'RBT' and Piece = 4

7.
delete from Provides where Provider = 'RBT' 