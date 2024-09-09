# 1
SELECT * FROM new_schema.orders o
join new_schema.customers c
on o.CustomerID =c.ï»¿CustomerID
where OrderDate between '1998-01-01' and '1998-05-05';

# 2
select
	p.ï»¿ProductID,
	p.ProductName,
	sum(od.UnitPrice * od.Quantity * od.Discount)as Totaldiscount
from new_schema.`order details` od
join new_schema.products p
on od.ProductID = p.ï»¿ProductID
group by p.ï»¿ProductID, p.ProductName;

# 3
SELECT
	c.ï»¿CategoryID,
	c.CategoryName,
    sum(p.UnitsInStock) as Totalstock
FROM new_schema.products p 
join  new_schema.categories c
on c.ï»¿CategoryID = p.CategoryID
group by c.CategoryName, c.ï»¿CategoryID
having Totalstock > 300;

# 4 
select 
	p.ProductName,
	p.UnitPrice,
	c.CategoryName
from new_schema.products p 
join new_schema.categories c
on c.ï»¿CategoryID = p.CategoryID