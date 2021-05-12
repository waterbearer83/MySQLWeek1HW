/*Homework MySQL Week 1 */
select * from employees where birth_date <= '1965-01-01';
select * from employees where gender = 'F' and hire_date >= '1991-01-01';
select first_name, last_name from employees where last_name like 'F%' limit 50;
Insert into employees values(100, '1983-01-22', 'Jessica', 'Rabbit', 'F', '2016-03-07'),
(101, '1993-07-09', 'Clara', 'Oswald', 'F', '2012-09-10'),
(102, '1954-11-10', 'Rick', 'Sanchez', 'M', '1996-05-02');
update employees set first_name = 'Bob' where emp_no = 10023;
update employees set hire_date = '2002-01-01' where first_name like 'P%' or last_name like 'P%';
delete from employees where emp_no < 10000;
delete from employees where emp_no = 10048; 
delete from employees where emp_no = 10099; 
delete from employees where emp_no = 10234; 
delete from employees where emp_no = 20089; 
select * from employees where emp_no >= 20087;