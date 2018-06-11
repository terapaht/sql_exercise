# SQL Exercises

## Exercise 1
* Import database
```bash
cd ex1
sqlite3 test.db < schema.sql
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
