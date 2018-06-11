--Select the names and the prices of all the products in the store.
select name, price from Products;

--Select the name of the products with a price less than or equal to $200.
select name from Products where price <= 200;

--Select all the products with a price between $60 and $120.
select * from products where price <= 120 and price >= 60;

--Compute the average price of all products with manufacturer code equal to 2.
select avg(price) from products where manufacturer = 2;

--Compute the number of products with a price larger than or equal to $180.
select count(*) from products where price >= 180;

--Select the name and price of all products with a price larger than or equal to $180, and sort first by price (in descending order), and then by name (in ascending order).
select name, price from products where price >= 180 order by price desc, name asc;

--Select all the data from the products, including all the data for each product's manufacturer.
select p.*, m.name from products p,manufacturers m where p.manufacturer=m.code;

--Select the product name, price, and manufacturer name of all the products.
select p.name, p.price, m.name from products p, manufacturers m where p.manufacturer=m.code;

--Select the average price of each manufacturer's products, showing the manufacturer's name.
select avg(price),m.name from products p, manufacturers m where p.manufacturer=m.code group by manufacturer;

--Select the names of manufacturer whose products have an average price larger than or equal to $150.
select name from manufacturers where code in (select manufacturer from products group by manufacturer having avg(price)>=150);

--Select the name and price of the cheapest product.
select name, price from products where price = (select min(price) from products);

--Select the name of each manufacturer along with the name and price of its most expensive product.
select m.name, p.name, p.price from manufacturers m,products p where p.code=(select code from products where price=(select max(price) from products)) and p.manufacturer = m.code;

--Add a new product: Loudspeakers, $70, manufacturer 2.
INSERT INTO Products(Name,Price,Manufacturer) VALUES('Loudspeakers',70,2);

--Update the name of product 8 to "Laser Printer".
update products set name = 'Laser Printer' where code = 8;




