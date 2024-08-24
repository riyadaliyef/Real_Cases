# That code was written in Mysql
#task 1
SELECT 
	UseType,
	Count(*) as total_number

FROM tasks.teldb
where Partner = 'Yes'
group by UseType;

# task 2
SELECT 
	ServiceforInternet,
	Count(*) as total_number
FROM tasks.teldb
where ProtectionforDevice = 'Yes' and Security = 'No'
group by ServiceforInternet;

#task 3
SELECT 
	* 
FROM tasks.teldb
where 2ormoreLines = 'Yes' and TotalofCharges > 2000