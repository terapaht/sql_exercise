# SQL Exercises

## Exercise 1
* Import database

```bash
cd ex1
sqlite3 test.db < schema.sql
```

* schema & data

```sql
CREATE TABLE Manufacturers (
  Code INTEGER,
  Name VARCHAR(255) NOT NULL,
  PRIMARY KEY (Code)
);

CREATE TABLE Products (
  Code INTEGER,
  Name VARCHAR(255) NOT NULL ,
  Price DECIMAL NOT NULL ,
  Manufacturer INTEGER NOT NULL,
  PRIMARY KEY (Code),
  FOREIGN KEY (Manufacturer) REFERENCES Manufacturers(Code)
);

INSERT INTO Manufacturers(Code,Name) VALUES(1,'Sony');
INSERT INTO Manufacturers(Code,Name) VALUES(2,'Creative Labs');
INSERT INTO Manufacturers(Code,Name) VALUES(3,'Hewlett-Packard');
INSERT INTO Manufacturers(Code,Name) VALUES(4,'Iomega');
INSERT INTO Manufacturers(Code,Name) VALUES(5,'Fujitsu');
INSERT INTO Manufacturers(Code,Name) VALUES(6,'Winchester');

INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(1,'Hard drive',240,5);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(2,'Memory',120,6);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(3,'ZIP drive',150,4);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(4,'Floppy disk',5,6);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(5,'Monitor',240,1);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(6,'DVD drive',180,2);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(7,'CD drive',90,2);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(8,'Printer',270,3);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(9,'Toner cartridge',66,3);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(10,'DVD burner',180,2);
```

* Problems
    <!-- * Select the names of all the products in the store. -->
    * Select the names and the prices of all the products in the store.
    * Select the name of the products with a price less than or equal to $200.
    * Select all the products with a price between $60 and $120.
    <!-- * Select the name and price in cents (i.e., the price must be multiplied by 100). -->
    <!-- * Compute the average price of all the products. -->
    * Compute the average price of all products with manufacturer code equal to 2.
    * Compute the number of products with a price larger than or equal to $180.
    * Select the name and price of all products with a price larger than or equal to $180, and sort first by price (in descending order), and then by name (in ascending order).
    * Select all the data from the products, including all the data for each product's manufacturer.
    * Select the product name, price, and manufacturer name of all the products.
    <!-- * Select the average price of each manufacturer's products, showing only the manufacturer's code. -->
    * Select the average price of each manufacturer's products, showing the manufacturer's name.
    * Select the names of manufacturer whose products have an average price larger than or equal to $150.
    * Select the name and price of the cheapest product.
    * Select the name of each manufacturer along with the name and price of its most expensive product.
    * Add a new product: Loudspeakers, $70, manufacturer 2.
    * Update the name of product 8 to "Laser Printer".
    <!-- * Apply a 10% discount to all products. -->
    <!-- * Apply a 10% discount to all products with a price larger than or equal to $120. -->

## Exercise 2
* Import database

```bash
cd ex2
sqlite3 test.db < schema.sql
```

* schema & data

```sql
CREATE TABLE Departments (
  Code INTEGER PRIMARY KEY,
  Name varchar(255) NOT NULL ,
  Budget decimal NOT NULL
);

CREATE TABLE Employees (
  SSN INTEGER PRIMARY KEY,
  Name varchar(255) NOT NULL ,
  LastName varchar(255) NOT NULL ,
  Department INTEGER NOT NULL ,
  foreign key (department) references Departments(Code)
);

INSERT INTO Departments(Code,Name,Budget) VALUES(14,'IT',65000);
INSERT INTO Departments(Code,Name,Budget) VALUES(37,'Accounting',15000);
INSERT INTO Departments(Code,Name,Budget) VALUES(59,'Human Resources',240000);
INSERT INTO Departments(Code,Name,Budget) VALUES(77,'Research',55000);

INSERT INTO Employees(SSN,Name,LastName,Department) VALUES('123234877','Michael','Rogers',14);
INSERT INTO Employees(SSN,Name,LastName,Department) VALUES('152934485','Anand','Manikutty',14);
INSERT INTO Employees(SSN,Name,LastName,Department) VALUES('222364883','Carol','Smith',37);
INSERT INTO Employees(SSN,Name,LastName,Department) VALUES('326587417','Joe','Stevens',37);
INSERT INTO Employees(SSN,Name,LastName,Department) VALUES('332154719','Mary-Anne','Foster',14);
INSERT INTO Employees(SSN,Name,LastName,Department) VALUES('332569843','George','ODonnell',77);
INSERT INTO Employees(SSN,Name,LastName,Department) VALUES('546523478','John','Doe',59);
INSERT INTO Employees(SSN,Name,LastName,Department) VALUES('631231482','David','Smith',77);
INSERT INTO Employees(SSN,Name,LastName,Department) VALUES('654873219','Zacary','Efron',59);
INSERT INTO Employees(SSN,Name,LastName,Department) VALUES('745685214','Eric','Goldsmith',59);
INSERT INTO Employees(SSN,Name,LastName,Department) VALUES('845657245','Elizabeth','Doe',14);
INSERT INTO Employees(SSN,Name,LastName,Department) VALUES('845657246','Kumar','Swamy',14);
```

* Problems
    <!-- * Select the last name of all employees. -->
    * Select the last name of all employees, without duplicates.
    <!-- * Select all the data of employees whose last name is "Smith". -->
    * Select all the data of employees whose last name is "Smith" or "Doe".
    <!-- * Select all the data of employees that work in department 14. -->
    <!-- * Select all the data of employees that work in department 37 or department 77. -->
    * Select all the data of employees whose last name begins with an "S".
    <!-- * Select the sum of all the departments' budgets. -->
    <!-- * Select the number of employees in each department (you only need to show the department code and the number of employees). -->
    * Select all the data of employees, including each employee's department's data.
    <!-- * Select the name and last name of each employee, along with the name and budget of the employee's department. -->
    * Select the name and last name of employees working for departments with a budget greater than $60,000.
    <!-- * Select the departments with a budget larger than the average budget of all the departments. -->
    * Select the names of departments with more than two employees.
    * Select the name and last name of employees working for departments with second lowest budget.
    * Add a new department called "Quality Assurance", with a budget of $40,000 and departmental code 11.
        * And Add an employee called "Mary Moore" in that department, with SSN 847-21-9811.
    <!-- * Reduce the budget of all departments by 10%. -->
    * Reassign all employees from the Research department (code 77) to the IT department (code 14).
    * Delete from the table all employees in the IT department (code 14).
    * Delete from the table all employees who work in departments with a budget greater than or equal to $60,000.
    * Delete from the table all employees.

## Exercise 3
* Import database

```bash
cd ex3
sqlite3 test.db < schema.sql
```

* schema & data

```sql
CREATE TABLE Movies (
  Code INTEGER PRIMARY KEY,
  Title VARCHAR(255) NOT NULL,
  Rating VARCHAR(255)
);

CREATE TABLE MovieTheaters (
  Code INTEGER PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  Movie INTEGER,
    FOREIGN KEY (Movie) REFERENCES Movies(Code)
) ;

INSERT INTO Movies(Code,Title,Rating) VALUES(1,'Citizen Kane','PG');
 INSERT INTO Movies(Code,Title,Rating) VALUES(2,'Singin'' in the Rain','G');
 INSERT INTO Movies(Code,Title,Rating) VALUES(3,'The Wizard of Oz','G');
 INSERT INTO Movies(Code,Title,Rating) VALUES(4,'The Quiet Man',NULL);
 INSERT INTO Movies(Code,Title,Rating) VALUES(5,'North by Northwest',NULL);
 INSERT INTO Movies(Code,Title,Rating) VALUES(6,'The Last Tango in Paris','NC-17');
 INSERT INTO Movies(Code,Title,Rating) VALUES(7,'Some Like it Hot','PG-13');
 INSERT INTO Movies(Code,Title,Rating) VALUES(8,'A Night at the Opera',NULL);

 INSERT INTO MovieTheaters(Code,Name,Movie) VALUES(1,'Odeon',5);
 INSERT INTO MovieTheaters(Code,Name,Movie) VALUES(2,'Imperial',1);
 INSERT INTO MovieTheaters(Code,Name,Movie) VALUES(3,'Majestic',NULL);
 INSERT INTO MovieTheaters(Code,Name,Movie) VALUES(4,'Royale',6);
 INSERT INTO MovieTheaters(Code,Name,Movie) VALUES(5,'Paraiso',3);
 INSERT INTO MovieTheaters(Code,Name,Movie) VALUES(6,'Nickelodeon',NULL);
```

* Problems
    <!-- * Select the title of all movies. -->
    * Show all the distinct ratings in the database.
    * Show all unrated movies.
    * Select all movie theaters that are not currently showing a movie.
    * Select all data from all movie theaters
        * and, additionally, the data from the movie that is being shown in the theater (if one is being shown).
    * Select all data from all movies and, if that movie is being shown in a theater, show the data from the theater.
    * Show the titles of movies not currently being shown in any theaters.
    * Add the unrated movie "One, Two, Three".
    * Set the rating of all unrated movies to "G".
    * Remove movie theaters projecting movies rated "NC-17".

## Exercise 4
* Import database

```bash
cd ex4
sqlite3 test.db < schema.sql
```

* schema & data

```sql
CREATE TABLE Pieces (
 Code INTEGER PRIMARY KEY NOT NULL,
 Name TEXT NOT NULL
 );
CREATE TABLE Providers (
 Code VARCHAR(40) PRIMARY KEY NOT NULL,
 Name TEXT NOT NULL
 );
CREATE TABLE Provides (
 Piece INTEGER,
 Provider VARCHAR(40),
 Price INTEGER NOT NULL,
 PRIMARY KEY(Piece, Provider),
 FOREIGN KEY (Piece) REFERENCES Pieces(Code),
 FOREIGN KEY (Provider) REFERENCES Providers(Code)
 );

INSERT INTO Providers(Code, Name) VALUES('HAL','Clarke Enterprises');
INSERT INTO Providers(Code, Name) VALUES('RBT','Susan Calvin Corp.');
INSERT INTO Providers(Code, Name) VALUES('TNBC','Skellington Supplies');

INSERT INTO Pieces(Code, Name) VALUES(1,'Sprocket');
INSERT INTO Pieces(Code, Name) VALUES(2,'Screw');
INSERT INTO Pieces(Code, Name) VALUES(3,'Nut');
INSERT INTO Pieces(Code, Name) VALUES(4,'Bolt');

INSERT INTO Provides(Piece, Provider, Price) VALUES(1,'HAL',10);
INSERT INTO Provides(Piece, Provider, Price) VALUES(1,'RBT',15);
INSERT INTO Provides(Piece, Provider, Price) VALUES(2,'HAL',20);
INSERT INTO Provides(Piece, Provider, Price) VALUES(2,'RBT',15);
INSERT INTO Provides(Piece, Provider, Price) VALUES(2,'TNBC',14);
INSERT INTO Provides(Piece, Provider, Price) VALUES(3,'RBT',50);
INSERT INTO Provides(Piece, Provider, Price) VALUES(3,'TNBC',45);
INSERT INTO Provides(Piece, Provider, Price) VALUES(4,'HAL',5);
INSERT INTO Provides(Piece, Provider, Price) VALUES(4,'RBT',7);
```

* Problems
    * Obtain the average price of each piece (show only the piece code and the average price).
    * Obtain the names of all providers who supply piece 1.
    * Select the name of pieces provided by provider with code "HAL".
    <!-- * For each piece, find the most expensive offering of that piece and include the piece name, provider name, and price (note that there could be two providers who supply the same piece at the most expensive price). -->
    * Add an entry to the database to indicate that "Skellington Supplies" (code "TNBC") will provide sprockets (code "1") for 7 cents each.
    * Increase all prices by one cent.
    * Update the database to reflect that "Susan Calvin Corp." (code "RBT") will not supply bolts (code 4).
    * Update the database to reflect that "Susan Calvin Corp." (code "RBT") will not supply any pieces (the provider should still remain in the database).
