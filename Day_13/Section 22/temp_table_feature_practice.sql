/*
Exercise #1:
Create a temporary table called dates containing the following three columns:
- one displaying the current date and time,
- another one displaying two months earlier than the current date and time, and a
- third column displaying two years later than the current date and time.
*/
create temporary table dates
select now() as today_current_date,
date_sub(now(),interval 2 month) as two_month_early,
date_sub(now(),interval -2 year) as two_year_later;

/*
Exercise #2:
Write a query that, upon execution, 
allows you to check the result set contained in the dates temporary table you created in the previous exercise.
*/
select * from dates;

/*
Exercise #3:
Create a query joining the result sets from the dates temporary table you created during the previous lecture 
with a new Common Table Expression (CTE) containing the same columns. Let all columns in the result set appear on the same row.
*/
with cte as (select now() as today_current_date,
date_sub(now(),interval 2 month) as two_month_early,
date_sub(now(),interval -2 year) as two_year_later)
select * from dates d join cte c;

/*
Exercise #4:
Again, create a query joining the result sets from the dates temporary table you created during the previous lecture 
with a new Common Table Expression (CTE) containing the same columns. This time, combine the two sets vertically.
*/
with cte as (select now() as today_current_date,
date_sub(now(),interval 2 month) as two_month_early,
date_sub(now(),interval -2 year) as two_year_later)
select * from dates d union select * from cte ;
