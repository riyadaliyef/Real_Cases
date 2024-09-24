# task 1
SELECT 
	o.ï»¿OrderID, #orderid yeni
	c.ContactName,
	OrderDate,
    ShippedDate,
    DATEDIFF( ShippedDate, OrderDate) as intervals

FROM tasks.orders as o

Inner join tasks.customers as c on o.CustomerID = c.ï»¿CustomerID
Where DATEDIFF( ShippedDate, OrderDate) > 20;

#task 2
SELECT 
	ï»¿OrderID,
    ShippedDate,
	date_add(date_add(ShippedDate, interval 2 month), interval 25 day) as newshippeddates
FROM tasks.orders
where weekday(OrderDate) = 4 # 0 monday olmaqla
;
# task 3
SELECT 
		CustomerID,
        min(OrderDate) as Oldest_orders
        
FROM tasks.orders
inner join tasks.customers on customers.ï»¿CustomerID = orders.CustomerID

WHERE OrderDate < DATE_SUB(CURDATE(), INTERVAL 25 year)
# date sub ile 300 ay geriye(25 il)  geriye getdim
# ancaq 25 il cox olan sifarisleri goturdum 

#Where TIMESTAMPDIFF(YEAR, OrderDate, CURDATE()) > 25 bu da verdiyimiz sertin ikinci yolu 
group by CustomerID



