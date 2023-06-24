
/* The Northwind dataset includes sample data for the following.
Suppliers: Suppliers and vendors of Northwind
Customers: Customers who buy products from Northwind
Employees: Employee details of Northwind traders
Products: Product information
Shippers: The details of the shippers who ship the products from the
traders to the end-customers
Orders and Order_Details: Sales Order transactions taking place
between the customers & the company */

/* 1. The UK sales team are visiting the Seattle office. Write a SQL statement
to display the lastname, firstname, title, country and city of the
employees you would now expect to be in Seattle. */

SELECT *
FROM Employees;

select lastname, firstname, title, country, city
from Employees
where city = 'Seattle';


-- 2. List the details of all the shippers been used by the company.--

select * 
from Shippers;


--3. List the names and prices of the ten cheapest products.--

select productname, unitprice
from Products
order by 2 asc
limit 10;


-- 4. List out the countries of Northwind Trader’s suppliers are based. --

select country
from Suppliers;


-- 5. Get the total value of those units, for each supplier. --

select  *
from Suppliers;


/* 6. Write a SQL query to display the product name and unit price of the top
3 most expensive products. */

select productname, unitprice
from products
order by 2 desc
limit 3;



/* 7. Write a query that displays the full name (i.e. include the title of
courtesy, last name and first name), title and hire date of the
employee(s) in the employees table with the job title Sales  */


select * from employees;
select titleofcourtesy||' ' || lastname  || '' || ''|| lastname || '' || 'as' || title || ''|| 'hired on ' || hiredate AS fullname 
from employees;


/* 8. The company wants to determine the top 5 ordered products
from start of business. Write a SQL statement to display the
product name and the product quantity (Use productquantity
as the column alias).  */


select *
from products;

select productname || '' || quantityperunit AS productquantity
from products
order by 1 desc
limit 5;

/* 9. The company wants to determine the bottom 5 ordered
products from start of business. Write a SQL statement to
display the product name and the product quantity (Use
productquantity as the column alias). */


/* 10 .How many employees where hired between August 14 1992
and August 4 1993? */

select * from employees;

select * from employees where hiredate between '1992-08-14' and '19930-08-04'


-- 13.How many of the products sold are Beverages? --
select C.categoryname, count(O.orderid) from order_details as O 
inner join products as P on O.productid = P.productid 
inner join categories as C on P.categoryid = C.categoryid
where C.categoryname = 'Beverages' group by C.categoryname
select 

14.What is the count of products that are Confections?


