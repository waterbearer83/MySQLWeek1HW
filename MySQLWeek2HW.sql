/*MySQLWeek2HW
 * 1. I want to know how many employees with each title were born after 1965-01-01.*/
select t.title, count(e.birth_date) as "Birthdates" from employees e 
inner join titles t on e.emp_no = t.emp_no
where e.birth_date >= "1965-01-01"
group by t.title;

/*2. I want to know the average salary per title.*/
select t.title, round(avg(s.salary), 2) as "Avrg Salary" from salaries s 
inner join employees e on e.emp_no = s.emp_no 
inner join titles t on e.emp_no = t.emp_no 
group by t.title;

/*3. How much money was spent on salary for the marketing department between the years 1990 and 1992? */
select d.dept_name as "Department", sum(round(s.salary/365,2) * 
least(760, greatest(0, datediff(s.to_date, '1990-01-01')),
greatest(0, datediff('1991-12-31',s.to_date)),
greatest(0, datediff(s.to_date, s.from_date)))) as "Salary paid between 1990-1992" 
from salaries s inner join dept_emp de on s.emp_no = de.emp_no 
inner join departments d on de.dept_no = d.dept_no 
where dept_name = 'Marketing'
and year(s.from_date) <= '1991'
and year(s.to_date) >='1990';

