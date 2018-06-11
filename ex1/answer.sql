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
--select p.* m.name from products p, Manufacturers m;

--Select the product name, price, and manufacturer name of all the products.


--Select the average price of each manufacturer's products, showing the manufacturer's name.
--Select the names of manufacturer whose products have an average price larger than or equal to $150.
--Select the name and price of the cheapest product.
--Select the name of each manufacturer along with the name and price of its most expensive product.
--Add a new product: Loudspeakers, $70, manufacturer 2.
--Update the name of product 8 to "Laser Printer".




