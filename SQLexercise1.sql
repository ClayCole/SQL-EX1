-- find all products
Select * From products;
-- find all products that cost $1400
Select * from products where price = 1400;
-- find all products that cost $11.99 or $13.99
select * from products where price = 11.99 or price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
select * from products WHERE NOT price = 11.99;

-- find all products and sort them by price from greatest to least
select * from products ORDER BY price DESC;
-- find all employees who don't have a middle initial
Select * from employees WHere MiddleInitial IS null;

-- find distinct product prices
Select distinct prices from products;
-- find all employees whose first name starts with the letter ‘j’
Select * from employees where firstname LIKE 'j%';

-- find all Macbooks
select * from products where name like '%MacBook';
-- find all products that are on sale
Select * from products where onsale;

-- find the average price of all products
select avg(price) from products;
-- find all Geek Squad employees who don't have a middle initial
select * from employees AS Employees Where MiddleInitial is Null and title = 'Geek Squad';

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
select * from products where StockLevel between 500 and 1200 Order BY Price;
