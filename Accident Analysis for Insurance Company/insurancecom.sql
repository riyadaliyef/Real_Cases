# That Code was written in Mysql
#task 1
SELECT 
    TYPEOFACCIDENT, 
    Dayname(str_to_date(DATE, '%d.%m.%Y')) as Weekdays , # txt oldugu ucun date cevirdim 
    Count(*) as countofaccidents
FROM tasks.insurancecompany
group by TYPEOFACCIDENT, Weekdays
#order by TYPEOFACCIDENT

;
#task 2

SELECT 
	REGIONNAME,
	avg(cast(replace(SPEED, 'km/hr', '') as signed integer)) as averagespeed
FROM tasks.insurancecompany
where REGIONNAME like '%NORTH%' or REGIONNAME like '%SOUTH%'
group by REGIONNAME;

