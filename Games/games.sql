
# i strongly recommend you shouold open this task through Bigquerry because dataset is enough large
# # when you typed year > 2000 in Bigquerry(Google) it returns error, so
#  with using safe case i convert year to integeer from date
#  so in dataset there is another problem in pokemon column, as can be seen, i chose only start with pok in order to solve that issue 

#1
SELECT * FROM `bigqueeertyry.games.Games` # reportdb.games
where Name like 'Pok%' and Year > '2000' and Global_Sales > 15
Order by Year asc;

#2
SELECT  Genre,avg(Global_Sales) as avg_global_sales  FROM `bigqueeertyry.games.Games`
where Year = '2010' 
Group by Genre
Order by avg_global_sales desc
Limit 10;

#3
SELECT * FROM `bigqueeertyry.games.Games` 
where Publisher in('Sega' ,'Activision') and Genre = 'Sports' and  Year in('2012','2015')
Order by Rank;

#4
with minmax as (
    SELECT
        Platform,
        Global_Sales,
        Row_number() Over (Partition by Platform Order by Global_Sales desc) as RankDesc,
        Row_number() Over (Partition by Platform Order by Global_Sales asc) as RankAsc
    FROM `bigqueeertyry.games.Games`
)
SELECT
    Platform,
    Global_Sales,

FROM minmax
Where RankDesc <= 5  or RankAsc <= 5

Order by Platform, 
         Case 
           When RankDesc <= 5 then RankDesc 
           Else Null
         End,
         Case 
           When RankAsc <= 5 then RankAsc 
           Else Null
         end;
SELECT
    Publisher,
    COUNT(*) AS Total
FROM  `bigqueeertyry.games.Games`

Group by Publisher
Order by Total Desc;
