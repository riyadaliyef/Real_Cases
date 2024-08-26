# task 1
SELECT 
* 
FROM tasks.realestatedb
where buildingage > 50  and haswasher = 1;

# task 2
Select 
	avg(price) as average_price,
    avg(size) as average_size, 
    buildingage
FROM tasks.realestatedb
where  haswasher = 1 and haselevator = 1 and hasgym = 1
group by buildingage;

# task 3
SELECT 
*,
(price / size * 0.093) as per_square_meter_price # ?


FROM tasks.realestatedb
where countofbedrooms = 2 and minimumtosubway <= 10