--Obtain the average price of each piece (show only the piece code and the average price).
select piece, avg(price) from provides group by piece;

--Obtain the names of all providers who supply piece 1.
select name from providers where code = (select provider from provides where piece = 1);

--Select the name of pieces provided by provider with code "HAL".
select name from pieces where code in (select piece from provides where provider = 'HAL');

--Add an entry to the database to indicate that "Skellington Supplies" (code "TNBC") will provide sprockets (code "1") for 7 cents each.
INSERT INTO Provides(Piece, Provider, Price) VALUES(1,'TNBC',7);

--Increase all prices by one cent.
update provides set price = price +1;

--Update the database to reflect that "Susan Calvin Corp." (code "RBT") will not supply bolts (code 4).
delete from provides where provider = 'RBT' and piece = 4;

--Update the database to reflect that "Susan Calvin Corp." (code "RBT") will not supply any pieces (the provider should still remain in the database).
delete from provides where provider = 'RBT';