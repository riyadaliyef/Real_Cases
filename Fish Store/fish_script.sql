#task1
SELECT 
	ï»¿Species, 
	Max(Weight) as maksimum_kutle,
	Min(Weight) as minimum_kutle
FROM dbo.fish
Group by ï»¿Species;

#task 2
SELECT *
FROM dbo.fish
Where Height > 15 and Width > 5;

#task3
SELECT 
	ï»¿Species, 
	avg(Vertical_length) AS vertical_uzunluq,
	avg(Diagonal_length) AS diagonal_uzunluq,
	avg(Cross_length) AS carpaz_uzunluq
FROM dbo.fish
Group by ï»¿Species;

#task4
SELECT
	*
FROM dbo.fish
where ï»¿Species like 'B%' and Height between 10 and 13 ;