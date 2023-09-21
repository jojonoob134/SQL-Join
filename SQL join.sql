/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT * FROM products LEFT JOIN categories on products.CategoryID = categories.CategoryID;
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT * FROM products LEFT JOIN reviews on Products.ProductID = reviews.ProductID WHERE Rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT sum(sales.Quantity) as total, employees.FirstName, employees.LastName 
FROM sales JOIN employees on sales.EmployeeID = employees.EmployeeID group by employees.EmployeeID
ORDER BY total DESC limit 2;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT departments.Name, categories.Name FROM departments JOIN categories on departments.DepartmentID = categories.DepartmentID 
WHERE categories.Name = 'games' or categories.Name = 'appliances';
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT sum(sales.Quantity) as total, (products.Price * sum(sales.Quantity)) AS 'Total price sold' 
FROM products JOIN sales on products.ProductID = sales.ProductID WHERE products.Name LIKE 'Eagles: Hotel California'
group by products.Name, products.price;
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT * FROM products join reviews on reviews.ProductID = products.ProductID ORDER BY Rating asc limit 2;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */