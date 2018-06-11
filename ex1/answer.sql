--1 Select the names and the prices of all the products in the store
SELECT Name,Price
FROM Products;

--2 Select the name of the products with a price less than or equal to $200
SELECT Name FROM Products WHERE Price <=200;
--3 Select all the products with a price between 60 and 120
SELECT * FROM Products WHERE Price > 60 AND Price <120
--4 Compute the average price of all products with manufacturer code equal to 2.
SELECt *,AVG(Price) AS AveragePrice  FROM Products WHERE manufacturer =2 ;
--5 Compute the number of products with a price larger than or equal to 180
SELECT COUNT(Name)  FROM Products  WHERE Price >= 180;
--6 Select the name and price of all products with a price larger than or equal to $180, and sort first by price (in descending order), and then by name (in ascending order).
SELECT Name,Price FROM Products WHERE Price >= 180 ORDER BY Price DESC,Name ASC;
--7Select all the data from the products, including all the data for each product's manufacturer.
SELECT * FROM Products INNER JOIN manufacturer ON Products.Manufacturer = Manufacturers.Code;
--8 Select the product name, price, and manufacturer name of all the products.
SELECT P.Name,P.Price,M.Name FROM Products INNER JOIN Manufacturers M ON P.Manufacturer =M.Code;
--9 Select the average price of each manufacturer's products, showing the manufacturer's name.
SELECT AVG(Price),Manufacturer FROM Products GROUP BY Manufacturer;
--10 Select the names of manufacturer whose products have an average price larger than or equal to $150.
SELECT AVG(P.Price) AS AveragePrice,M.Name  FROM Manufacturers M INNER JOIN Products P ON M.Code=P.Manufacturer GROUP BY M.Name having AveragePrice >= 150;
--11
SELECT P.Name,P.Price,M.Name FROM Products P JOIN Manufacturers M ON(P.Manufacturer=M.Code);
--13
INSERT INTO Products values(11,"LoundSpeakers",70,2);
--14
UPDATE Products set Name="Laser Printers" WHERE Code=8;
--12
