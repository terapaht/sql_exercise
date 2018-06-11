1.select Name,Price
  from Products;

2.select Name
  from Products
  where Price <= 200;

3.select *
   ...> from Products
   ...> where Price >=60 and Price <= 120;

4.  select avg(Price)
   ...> from Products
   ...> where Manufacturer = 2;

5.  select count(*)
   ...> from Products
   ...> where Price >=180;

6.select Name,Price
   ...> from Products
   ...> where Price >= 180
   ...> order by Price desc, Name asc
   ...> ;

7.  select p.*,m.*
   ...> from Products p,Manufacturers m
   ...> where p.Manufacturer = m.Code
   ...> ;

8.  select p.Name,p.Price,m.Name
   ...> from Products p,Manufacturers m
   ...> where p.Manufacturer = m.Code
   ...> ;

9.  select m.Name,avg(Price)
   ...> from Products p,Manufacturers m
   ...> where p.Manufacturer = m.Code
   ...> group by m.Name
   ...> ;

10. select m.Name
   ...> from Products p,Manufacturers m
   ...> where p.Manufacturer = m.Code
   ...> group by m.Name
   ...> having avg(Price) >= 150
   ...> ;

11.  select Name,Price
   ...> from Products
   ...> where Price = (select min(Price)
   ...> 	from Products
   ...> 	group by Price)
   ...> ; 

12. select m.Name,p.Name,p.Price
   ...> from Products p ,Manufacturers m
   ...> where m.Code = p.Manufacturer
   ...> and p.Name in
   ...> (select Name
   ...> from Products
   ...> where Price in (
   ...> select max(Price)
   ...> from Products
   ...> group by Manufacturer)
   ...> )
   ...> ;

13. insert into Products values (11,"Loudspeakers",70,2);
14. update Products set Name = "Laser Printer" where code =8;
