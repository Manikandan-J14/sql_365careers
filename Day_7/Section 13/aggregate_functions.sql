#1.count()

select * from salaries order by salary desc limit 10;
select count(salary) from salaries;
select count(distinct from_date) from salaries;
select count(*) from salaries;

#2.sum()

select sum(salary) from salaries;

#3. max() and min()

select max(salary) from salaries;
select min(salary) from salaries;

#4. avg()

select avg(salary) from salaries;