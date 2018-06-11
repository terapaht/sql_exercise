-- 1 Select the names and the prices of all the products in the store.
select Name,Price from Products;

-- 2 Select the name of the products with a price less than or equal to $200.
select Name from Products where Price<=200;

-- 3 Select all the products with a price between $60 and $120.
select * from Products where Price between 60 and 120;

-- 4 Compute the average price of all products with manufacturer code equal to 2.
select AVG(Price) from Products where Manufacturer = 2;

-- 5 Compute the number of products with a price larger than or equal to $180.
select count(*) from Products where Price >= 180;

-- 6 Select the name and price of all products with a price larger than or equal to $180, and sort first by price (in descending order), and then by name (in ascending order).
select Name,Price from Products where Price >= 180 order by Price DESC, Name ASC;

-- 7 Select all the data from the products, including all the data for each product's manufacturer.
select * from Products join Manufacturers on Products.Manufacturer = Manufacturers.Code;

-- 8 Select the product name, price, and manufacturer name of all the products.
select p.Name, p.Price, m.Name from Products p join Manufacturers m on p.Manufacturer = m.Code; 

-- 9 Select the average price of each manufacturer's products, showing the manufacturer's name.
select AVG(p.Price),m.Name from Products p, Manufacturers m group by Manufacturer;

-- 10 Select the names of manufacturer whose products have an average price larger than or equal to $150.
select Name from Manufacturers where (select AVG(p.Price) from Products p, Manufacturers m group by Manufacturer) >= 150;

-- 11 Select the name and price of the cheapest product.
select Name,Price from Products where Price = (select min(Price) from Products);

-- 12 Select the name of each manufacturer along with the name and price of its most expensive product.
select m.Name,p.Name,p.Price from Manufacturers m, Products p
where p.Price = (select MAX(Price) from Products) group by p.Manufacturer;

-- 13 Add a new product: Loudspeakers, $70, manufacturer 2.
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(11,'Loudspeakers',70,2);

-- 14 Update the name of product 8 to "Laser Printer".
UPDATE Products SET Name = "Laser Printer" WHERE Code = 8;