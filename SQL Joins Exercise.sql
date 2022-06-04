/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT products.Name, categories.Name
 FROM products
 INNER JOIN categories on categoriesID = products.category.ID
 WHERE categories.Name = "Computers";
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 . These come from the two tables, products and reviews tables. In both of those tables,
they have a ProductID column*/ 
 SELECT products.Name, products.Price, reviews.Rating
 FROM products
 INNER JOIN reviews ON reviews.ProductID = products.ProductID
 WHERE reviews.Rating = 5; 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT employee.FirstName, employee.LastName, Sum(sales.quanity) AS Total
FROM employees
INNER JOIN employees ON employees.EmployeeID = sales.EmployeeID
GROUP BY employees.EmployeeID
ORDER BY Total DESC;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT department.Name, categories.Name
FROM departments
INNER JOIN categories ON categories.Name = departments .Name
WHERE categories.Name = 'Appliances' OR categories.Name = 'Games';
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT products.Name, Sum(sales.quantity) AS 'Total Sold', Sum(sales.quantity * sales.PricePerUnit) AS 'TOTAL Price'
FROM products
INNER JOIN sales on sales.ProductID = product.ProductID
WHERE  products.ProductID= 97;
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT products.Name, reviews.Reviewer, MIN(reviews.rating)
FROM products
INNER JOIN reviews.Reviewer ON products.ProductID = products.ProductID
WHERE product.ProductID= 857
GROUP BY product.ProductID;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */