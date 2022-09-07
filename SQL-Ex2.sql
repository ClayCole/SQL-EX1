/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
Select * From Products 
INNER JOIN categories ON products.CategoryID = categories.CategoryID
WHere products.CategoryID = 1;

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
Select products.Name , products.price, reviews.rating FROM Products
Inner join  reviews On products.ProductID = reviews.ProductID
where reviews.rating = 5;

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
 Select employees.FirstName, employees.LastName, Sum(Sales.Quantity) As total
From Sales
INNER JOIN employees ON employees.employeeID = sales.employeeID
Group by employees.EmployeeID
Order by Total desc
Limit 10 ;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
Select * From departments
INNER JOIN categories ON departments.departmentID = categories.departmentID
where categories.name = "appliances" OR categories.Name = "Games" ;

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
  Select products.Name, Sum(sales.Quantity) as 'Total Sold',Sum(Sales.Quantity*Sales.PricePerUnit) As 'total price'
From products
INNER Join Sales ON sales.productID = products.productID
where products.productID = 97 ; -- you need to look up the product ID cause you can Join by product Name as both categories dont have that column.
-- to verify
select * from sales where productID = 97;
 
 /* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
Select products.Name , reviews.reviewer, reviews.rating, reviews.comment FROM Products
Inner join  reviews on reviews.productID = products.productID
where products.productID = 857 AND Reviews.rating = 1 ; 

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */
select e.FirstName , e.LastNAme, e.EmployeeID, p.Name, Sum(s.Quantity) as TotalSold
From Sales as s
inner join employees as e on e.employeeID = s.employeeID
inner join products as p on p.productID = s.productID
Group by e.EmployeeID , p.ProductID 
Order By TotalSold DESC
Limit 10 ;



