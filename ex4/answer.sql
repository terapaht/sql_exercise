-- 1 Obtain the average price of each piece (show only the piece code and the average price).
SELECT AVG(Price) FROM (Pieces p JOIN (Provides pr JOIN Providers prd ON pr.Provider = prd.Code) ON p.Code = pr.Piece) GROUP BY Piece;

-- 2 Obtain the names of all providers who supply piece 1.
SELECT prd.Name FROM Provides pr JOIN Providers prd ON pr.Provider = prd.Code WHERE pr.Piece = 1;

-- 3 Select the name of pieces provided by provider with code "HAL".
SELECT p.Name FROM (Pieces p JOIN (Provides pr JOIN Providers prd ON pr.Provider = prd.Code) ON p.Code = pr.Piece) WHERE prd.Code = 'HAL' GROUP BY Piece;

-- 4 Add an entry to the database to indicate that "Skellington Supplies" (code "TNBC") will provide sprockets (code "1") for 7 cents each.
INSERT INTO Provides(Piece, Provider, Price) VALUES(1,'TNBC',7);

-- 5 Increase all prices by one cent.
UPDATE Provides SET Price = (SELECT pr2.Price FROM Provides AS pr2 WHERE pr2.Price = Provides.Price) + 1;

-- 6 Update the database to reflect that "Susan Calvin Corp." (code "RBT") will not supply bolts (code 4).
DELETE FROM Provides WHERE Piece = 4 AND Provider = 'RBT';

-- 7 Update the database to reflect that "Susan Calvin Corp." (code "RBT") will not supply any pieces (the provider should still remain in the database).
DELETE FROM Provides WHERE Provider = 'RBT';
