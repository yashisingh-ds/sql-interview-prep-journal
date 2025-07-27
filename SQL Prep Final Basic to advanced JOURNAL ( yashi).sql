-- create a  new database--     ( Data Definition Language (DDL) Command)
CREATE DATABASE YASHI;         -- ( CREATE ,ALTER ,TRUNCATE , DROP ,RENAME )--
USE YASHI ;

-- create new table --
create table employees(
emp_id int PRIMARY KEY ,
first_name varchar(100)NOT NULL ,
last_name varchar(80),
deprt_id int,
role_id int,
hire_date date,
salary int  );

create table department (
deprt_id int PRIMARY KEY,
deprt_name varchar(80)NOT NULL,
manager_id int);
desc department;

create table role (
role_id int PRIMARY KEY,
role_title varchar (100) NOT NULL  );
desc role ;

create table attendance( 
emp_id int PRIMARY KEY,
attend_date date, 
in_time datetime,
out_time datetime );

Use yashi;
show tables;

-- ALTER, RENAME , TRUNCATE  & DROP A TABLE ---
 alter table employees add dob int ;
 alter table employees add depart_name varchar(50);
 alter table employees modify salary decimal(10,2) ;
 alter table employees rename column deprt_id to depart_id;
 alter table employees rename column first_name to f_name;
 alter table employees rename column last_name to l_name;
 desc employees;
 alter table attendance modify in_time time;
 alter table attendance modify out_time time;
 desc attendance;
 alter table department  rename column deprt_id to depart_id ;
 alter table department rename column deprt_name to depart_name;
 desc department;
 alter table role change role_title job_role varchar(50) ;
 desc role ;
 alter table employees drop dob;
 desc employees;
show create table employees;
truncate table employees;
drop table role;

CREATE TABLE salary (
    emp_id INT,
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    salary_date DATE,
    hire_date date,
    remarks TEXT,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
-- ( Data Query language (DQL Commands ))--
-- (SELECT ,DISTINCT )--
select* from employees; 
select emp_id from employees;
select distinct * from department;
select distinct attend_date from attendance;

-- ( Data Manipulation language (DML Commands ))--
-- ( INSERT ,UPDATE ,SELECT & DELETE) --

insert into employees ( emp_id ,f_name ,l_name ,depart_id,role_id,hire_date,salary)
values (1, 'Yashi' , 'Singh' , 3, 45,'2026-01-19',600000);
insert into employees ( emp_id ,f_name ,l_name ,depart_id,role_id,hire_date,salary ,depart_name)
values (2, 'vashu' , 'Singh' , 2, 85,'2026-01-21',800000,'Data Analyst');
insert into employees ( emp_id ,f_name ,l_name ,depart_id,role_id,hire_date,salary,depart_name)
values (3, 'Shivam' , 'Sinha' , 8, 45,'2025-01-09',900000,'HR');
insert into employees ( emp_id ,f_name ,l_name ,depart_id,role_id,hire_date,salary,depart_name)
values (4, 'Yash' , 'Mehra' , 9, 90,'2025-11-01',300000,'SDE');
insert into employees ( emp_id ,f_name ,l_name ,depart_id,role_id,hire_date,salary,depart_name)
values (5, 'Shivangi' , 'Mehta' , 8, 78,'2024-12-29',200000,'SDE');
insert into employees ( emp_id ,f_name ,l_name ,depart_id,role_id,hire_date,salary)
values (7, 'Yashida' , 'Sin' , 3, 45,'2023-11-19',60000);
insert into employees ( emp_id ,f_name ,l_name ,depart_id,role_id,hire_date,salary)
values (6, 'Sajna' , 'Sinha' , 9, 35,'2023-12-07',200000);
insert into employees ( emp_id ,f_name ,l_name ,depart_id,role_id,hire_date,salary,depart_name)
values (8, 'Rahul' , 'Mehta' , 1, 88,'2024-11-19',200000,'Cloud');
insert into employees ( emp_id ,f_name ,l_name ,depart_id,role_id,hire_date,salary,depart_name)
values (9, 'Abhay' , 'Singh' , 5, 92,'2024-12-20',700000,'Customer Service');
insert into employees ( emp_id ,f_name ,l_name ,depart_id,role_id,hire_date,salary,depart_name)
values (10, 'Jish' , 'Ahuja' , 7, 17,'2024-12-29',200000,'Sales');
insert into employees ( emp_id ,f_name ,l_name ,depart_id,role_id,hire_date,salary,depart_name)
values (12 ,'Roshni','Mehtra', 6 , 21, '2023-11-13',900000,'Marketing');

desc department;
select * from department;
insert into department( depart_id,depart_name,manager_id)
values (1,'Cloud',109);
insert into department( depart_id,depart_name,manager_id)
values (2,'HR',101);
insert into department( depart_id,depart_name,manager_id)
values (3,'Data Analyst',102);
insert into department( depart_id,depart_name,manager_id)
values (8,'SDE',103);
insert into department( depart_id,depart_name,manager_id)
values (9,'Finance',112);
insert into department( depart_id,depart_name,manager_id)
values (7,'Sales',104);
insert into department( depart_id,depart_name,manager_id)
values (6,'Marketing',108);
insert into department( depart_id,depart_name,manager_id)
values (5,'Customer Service',113);
 
show tables;
desc attendance;
select * from attendance;
insert into attendance(emp_id,attend_date,in_time,out_time)
values(1,'2024-12-02','09:15:00', '18:30:00');
insert into attendance(emp_id,attend_date,in_time,out_time)
values(2,'2024-05-23','09:00:00','7:30:00');
insert into attendance(emp_id,attend_date,in_time,out_time)
values(3,'2025-03-12','06:00:00','14:30:00');
insert into attendance(emp_id,attend_date,in_time,out_time)
values(4,'2025-03-12','09:30:00','13:03:00');
insert into attendance(emp_id,attend_date,in_time,out_time)
values(5,'2025-06-24','14:00:00','23:30:00');
insert into attendance(emp_id,attend_date,in_time,out_time)
values(6,'2025-12-29', '09:30:00','13:03:00');
insert into attendance(emp_id,attend_date,in_time,out_time)
values(7,'2024-06-03','09:30:00','13:03:00');
insert into attendance(emp_id,attend_date,in_time,out_time)
values(8,'2025-03-12','06:00:00','14:30:00');
insert into attendance(emp_id,attend_date,in_time,out_time)
values(9,'2025-12-29', '09:30:00','13:03:00');
insert into attendance(emp_id,attend_date,in_time,out_time)
values(10,'2025-03-12','06:00:00','14:30:00');
insert into attendance(emp_id,attend_date,in_time,out_time)
values(11,'2025-12-29', '09:30:00','13:03:00');
insert into attendance(emp_id,attend_date,in_time,out_time)
values(12,'2025-03-12','06:00:00','14:30:00');

select emp_id ,depart_name,salary from employees;
desc salary;
select distinct * from salary;
insert into salary(emp_id,salary,bonus,salary_date, remarks)
values (1,600000,200000,'2025-06-03','Promoted to Senior Analyst');
insert into salary(emp_id,salary,bonus,salary_date, remarks)
values (2,800000,12000,'2025-12-06','Senior Execuetive');
insert into salary(emp_id,salary,bonus,salary_date, remarks)
values (3,900000,2100,'2025-10-03','SDE');
insert into salary(emp_id,salary,bonus,salary_date, remarks)
values (4,300000,12000,'2025-11-02','Excellent Performer of Finance deopartment');
insert into salary(emp_id,salary,bonus,salary_date, remarks)
values (5,200000,10000,'2025-11-17','Entery-level SDE');
UPDATE salary
SET remarks = 'Entry-level SDE'
WHERE emp_id = 5;
insert into salary(emp_id,salary,bonus,salary_date, remarks)
values (6,200000,20000,'2025-11-19','Performer of the week');
insert into salary(emp_id,salary,bonus,salary_date, remarks)
values (7,60000,40000,'2025-01-23','Entery-level Data Analyst');
insert into salary(emp_id,salary,bonus,salary_date, remarks)
values (9,700000,21000,'2025-06-03','Good Performer');
insert into salary(emp_id,salary,bonus,salary_date, remarks)
values (10,200000,21000,'2025-08-15','Sales Executive');
insert into salary(emp_id,salary,bonus,salary_date, remarks)
values (12,900000,50000,'2025-04-16','Highest Bonus Achiver');


select emp_id , attend_date from attendance;
update  attendance
set attend_date ='2022-06-03' 
where emp_id = 11 ;

update  attendance
set attend_date ='2022-06-03' 
where emp_id = 11 ;

select depart_name from employees 
where depart_name is null;
select depart_name from employees;

SET SQL_SAFE_UPDATES = 0;

 update employees
 set depart_name ='Data Analyst'
 where depart_id = 3;
 update employees
 set depart_name ='HR'
 where depart_id = 2;
 update employees
 set depart_name ='SDE'
 where depart_id = 8;
 update employees
 set depart_name ='Finance'
 where depart_id = 9;
 select depart_id ,depart_name from employees;
 
 select emp_id , remarks from salary;
 update salary
 set remarks ='Entry-level Analyst'
 where emp_id =7;
 update salary
 set remarks ='Excellent Performer of Finance Department'
 where emp_id =4;
 
 select emp_id , f_name ,depart_name from employees
 where depart_name like 'HR';
 select emp_id , bonus from salary;
 
 
 select f_name,l_name from employees
 where emp_id in (1,2,3,8) ;    -- IN Operator as a replacement of OR operator--
 
 delete from  employees
 where depart_name = 'Cloud';
 select depart_name from employees;
 
 select emp_id ,f_name,l_name,depart_name from employees;
 select emp_id,salary from salary
 where salary =200000;
 
 -- ( DATA QUERY LANGUAGE (DQL) WITH OPERATORS) --
 
select * from employees;
select * from salary;
select * from attendance;
select distinct emp_id from salary;
select distinct salary from salary;
select distinct salary ,salary_date from salary;

-- ( Aggregate Function (BUILD-IN FUNCTION) )--
select count(*) from employees;
select * from salary;
select count(salary) from salary where salary = 200000;
select count(*) from attendance;
select count(in_time) from attendance
where in_time = '09:15:00';
Select * from department;
select count(*) from department;
select count(depart_name) from department 
where depart_name = 'SDE';

select sum(salary) from employees;
select sum(depart_id) from department ;
select sum(attend_date) from attendance;
select sum(bonus) from salary
where bonus>50000;
select sum(bonus) from salary
where bonus<10000;
select avg(salary) from employees;
select avg(salary) from employees
where depart_name ='Data Analyst';
select avg (bonus) from salary 
where bonus > 21000;
select min(in_time)from attendance;
select min(f_name) from employees;
select min(salary) from salary;
select min(bonus) from salary
where bonus> 10000;
select min( depart_name) from department ;
select min(depart_id) from department;
select min(remarks)from salary;
select min(emp_id) from employees;
select min(attend_date) from attendance;
select max(salary)from salary;
select max(depart_id) from employees;
select max(f_name) from employees; 
select max(bonus) from salary
where  bonus > 40000;
select max(bonus) from salary;

-- (Transaction Control Language (TCL) ) --
select * from employees;
SET autocommit = 0;
start transaction;
insert into employees( emp_id ,f_name ,l_name ,depart_id,role_id,hire_date,salary ,depart_name)
values (18 ,'Abhay' , 'Chauhan',117,102,'2025-07-21',600000,'HR');
savepoint after_insert;
insert into employees( emp_id ,f_name ,l_name ,depart_id,role_id,hire_date,salary ,depart_name)
values (13,'Manveer','Kushwah',105,112,'2025-11-29',300000,'Finance');
rollback to after_insert;
commit;
SHOW TABLE STATUS LIKE 'employees';

-- to find the second maximum salary of the department---
select* from salary;
select max(salary) as second_highest_salary
from salary where salary <(select max(salary) from salary);
-- to find the third highest salary in the table --
select distinct salary from salary 
order by salary desc
limit 1 offset 2;
-- Query to find the 2nd lowest salary in the table ---
select distinct salary from salary 
order by salary
limit 1 offset 1;

-- (SORTING OR USING ORDER BY IN SQL)---
select * from employees;
select f_name ,l_name ,salary from employees
order by f_name asc ,salary desc;
select attend_date from attendance 
order by attend_date desc;
select distinct in_time ,out_time from attendance
order by in_time , out_time desc;
select in_time , out_time from attendance
order by in_time desc ,out_time desc;
select * from department ;
select distinct depart_name from department
order by depart_name desc;
select remarks from salary
order by remarks ;
select distinct hire_date from employees
order by hire_date desc;
select f_name from employees
order by hire_date desc;
select * from employees;
select f_name ,l_name,salary * 12 as annual_salary from employees;
select * from salary ;

-- calaculate the 10% of bonus in the salary table --
select emp_id , bonus * 0.10 as bonus from salary ;

-- caluclulate the total earning of employee--
select emp_id , salary + bonus as total_earning from salary
order by total_earning ;

-- ( SCALER FUNCTIONS )--
select ucase(f_name ) from employees;
select ucase(concat(f_name, '' ,l_name) ) as emp_name  from employees;
select lcase(l_name) from employees;
select length(remarks) from salary;
select length(in_time) from attendance;
select length(hire_date) from employees;
select remarks from salary;
select length(remarks) from salary;
select mid(remarks , 31,41) as name from salary;
select length(depart_name) from employees;
select format(now(), 'dd-mm-yyyy');

-- ( STRING FUNCTION)--
select substring(f_name , 1,2) from employees;

-- (DATE & TIME FUNCTION)--
select now();
select curdate();
select curtime();
select hire_date from employees;
select dayofyear(hire_date) as day from employees;
select dayname(hire_date) from employees;
select hour(in_time) as hour from attendance;
select second(out_time) as seconds from attendance;
select monthname(hire_date) as month from employees;
select dayname(attend_date) from attendance;
select yearweek(attend_date) from attendance;
select year(attend_date) from attendance;
select month(hire_date) from employees;
select day(attend_date) from attendance;
select hour(in_time) from attendance;
select minute(in_time) from attendance;
select second(in_time) from attendance;
select date_add('2022-06-03',interval 3 year) as plus_3_years ;
select date_sub('2025-01-19',interval 2 month) as minus_2_months;
select date_format('2025-06-03','%d%m%y');

-- (Calculate the number of days since each employee joined)--
select emp_id,concat(f_name,l_name) as full_name , datediff(curdate(),hire_date) 
as joining_date_from_now from employees;

-- ( GROUP BY CLAUSE)--
select concat(f_name ,l_name) as emp_name , count(depart_name) as total_number_of_employees from employees
where depart_name = 'Data Analyst'
group by concat(f_name ,l_name) ;
-- ( count the number of employees in each department)--
select depart_name , count(*) as total_number_of_employees
from employees
group by depart_name;
 select emp_id , avg(salary) 
 from salary 
group by emp_id;
select * from department;

-- (SYSTEM FUNCTIONS)--
select user();
select version();
select connection_id();
select database();

-- Write a query to get the length of each employee's full name.--
select length(concat(f_name ,'',l_name )) as full_name  from employees;

-- (STRING FUNCTIONS )--

-- combine f_name nd l_name--
select concat(f_name , l_name ) as full_name from employees;
select trim(f_name) from employees;
select remarks from salary;
update salary
set remarks =' Promoted To Senior Analyst'
where emp_id =1;
select trim(remarks) from salary 
where emp_id=1;
select remarks from salary;
select replace(remarks,' ','') from salary 
where emp_id =1;
select trim(full_name),
left(trim(full_name),5) as f_name from Customers;
select trim(full_name),
right (trim(full_name),6) as l_name from customers;
select reverse(l_name) from employees ;

-- ( find employees earning more tha the average)--

select emp_id, salary
from salary
where salary > ( select avg(salary) from salary );
select ceil(salary/1000.0) as rounded_up_value from salary;
select ceiling(123.78); -- sample --
select round(salary/1000,2) as round_off from salary;
select round(123.6767,1) as rounded_value ; -- SAMPLE--
-- to find the even salary--
select emp_id ,salary , mod(salary,3) as is_even
from salary;
-- to find the odd salary--
select emp_id,salary from salary
where mod(salary,2)=1;
select power(3,3) as result;
select sqrt(121);
select emp_id ,salary , sqrt(salary) as sqrt_salary from salary;
select mod(29,8); -- sample--
select bonus ,sqrt(bonus) as sqrt_bonus from salary;
select sqrt(121);-- sample --

-- ( Temperature ( CELSIIUS TO FAHRENHITE) --
select ( 35 * 9/5) + 32 as temp_in_farenhite;
-- ( Temperature  ( Fahrenhite to celsius ) --
select ( 89 -32) *5/9 as temp_in_celsius ;
-- ( TO WRITTEN FIRST LETTER OF THE COLUMN) --
select substring(f_name , 1, 1) as first_name from employees;

-- ( OPERATORS IN SQL ) --

select f_name from employees
where f_name like 'y%';
select l_name from employees
where l_name like '%A';

-- ( arithematic operator ) --

-- to calculate the total salary including bonus for each employee--
select   emp_id , salary+bonus as total_salary from salary;
-- a bonus was wrongly added, now  display base salary without it--
select emp_id ,salary-bonus as base_salary from salary;
-- query to  calculate a 10% salary hike for all employees--
select emp_id, salary ,salary*0.10 as hike_amount  from salary;
-- How would you find the percentage of bonus compared to salary--
select emp_id ,salary ,bonus , salary / bonus * 100 as compared from salary;
-- How would you identify even or odd salaries? --
select emp_id , salary , mod(salary ,2 ) as even_salary from salary ;
-- Calculate future salary after 2 years with 8% growth per year --
select emp_id , salary , salary*power(1.80 , 2) as future_salary from salary;

-- ( COMPARISON OPERATOR )--

select * from salary 
where salary = 600000;
select * from salary 
where bonus>= 21000;
select * from employees
where depart_name = 'HR';
select emp_id , depart_name , concat(f_name , l_name) as full_name from employees
where depart_name <> 'SDE' ;

-- ( SPECIAL OPERATORS) --

select depart_name, manager_id from department 
where manager_id is not null;
select salary> null from salary ;
select all emp_id  from employees;
select f_name from employees
where f_name like'_%a';
select f_name from employees
where f_name like'_a%';
select concat(f_name ,l_name )as emp_name , depart_name  from employees
where depart_name in ('Data Analyst','HR','Finance');

-- ( LOGICAL OPERATORS ) --

select emp_id ,attend_date , in_time   from attendance 
where in_time between '09:00:00' and '09:30:00';

-- (Find employees whose first names start with 'A' and are in 'HR' or 'Finance')--

select emp_id , f_name , depart_name from employees
where f_name like'A%' AND depart_name In ('HR','Finance');

select * from salary;
select emp_id, salary , remarks  from salary
where remarks like 'Excellent Performer of he Finance Department' and salary > 4000;
select all hire_date  from employees;
select emp_id , hire_date , depart_name from employees
where depart_name like 'Data Analyst' or hire_date = '2025-11-01';
select * from employees
where not depart_name = 'Data Analyst' ;
SELECT 6 & 3 AS result;


Select max(salary) , depart_name from employees 
group by depart_name;

select * from attendance;
select max(attend_date) , in_time from attendance 
group by in_time
order by in_time desc;

-- (Show all departments and the number of employees in each) --
select count(concat(f_name , ' ', l_name )) as number_of_employees , depart_name from employees
where depart_name in('SDE' , 'HR', 'Data Analyst','Finance','Marketing','Sales')
group by depart_name;

-- (JOINS IN SQL )--

-- ( INNER JOIN QUERIES )--

select concat(f_name, " ",l_name) as emp_name , s.salary
from employees e
inner join salary s
on e.emp_id = s.emp_id
where e.depart_name = 'HR'
and s.salary > '210000';

select * from employees;
select * from department;
select * from salary;
select * from attendance;

select e.f_name , e.role_id , e.depart_name , s.salary, s.bonus 
from employees e
inner join salary s on e.emp_id =s.emp_id ;
-- (Get employees with remarks = 'Entry-level SDE')--

select distinct concat(f_name , "" , l_name ) as full_name , s.remarks
from employees e
inner join salary s on e.emp_id = s.emp_id
where s.remarks like 'Entry-level SDE';

-- (List employees whose bonus is greater than 20000 and hired after ‘2024-01-01’)
select distinct concat(f_name , "  " , l_name ) as full_name , e.hire_date , s.bonus
from employees e
inner join salary s on e.emp_id = s.emp_id
where s.bonus > 20000 and e.hire_date > '2024-01-01';

 -- ( Get full names and department of employees who earn more than ₹300,000)--
 select e.depart_name , concat(f_name , "  " , l_name) as full_name ,s.salary 
 from employees e
 inner join salary s on e.emp_id =s.emp_id 
 where s.salary > 300000 ;
 
 -- ( Find names and bonuses of all employees in the "HR" department) --
 select e.depart_name, concat(f_name , " " , l_name ) as emp_name ,s.bonus as bonuses
 from employees e
 inner join salary s on e.emp_id = s.emp_id
 where e.depart_name like 'HR';
 
 -- (Show department-wise average salary)--
 select e.depart_name , avg(s.salary) as avg_salary
 from employees e
 inner join salary s on e.emp_id = s.emp_id
 group by e.depart_name;

 -- ( List all employees whose bonus is more than ₹10,000 and department is not SDE along with the office attend time) --
 select distinct e.depart_name , concat(f_name , " ", l_name ) as emp_name ,
 s.bonus , a.attend_date
 from employees e
 inner join salary s on e.emp_id =s.emp_id
 inner join attendance a on s.emp_id = a.emp_id
 where s.bonus > 10000 and e.depart_name <> 'SDE' ;
 
 -- (  Find full name and total compensation (salary + bonus) of each employeead their intime is after 9 )--
 select concat(f_name , "   " ,l_name ) as full_name ,
 sum( s.salary + s.bonus) as total_compensation , a.in_time
 from employees e
 inner join salary s on s.emp_id = e.emp_id
 inner join attendance  a on a.emp_id = s.emp_id
 where a.in_time > '09:00:00'
 group by e.emp_id , a.in_time;
 
 -- (Show list of departments with more than 1 employee and their total salary)--
 select (e.depart_name ),
 count(*) as number_of_employees ,
 sum(s.salary+s.bonus) as total_salary 
 from employees e
 inner join salary s on s.emp_id = e.emp_id
 group by e.depart_name 
 having count(*) > 1;
 
 -- (List all employees who belong to either ‘HR’ or ‘Data Analyst’ and have salary less than ₹900000)
 select e.depart_name , s.salary
 from employees e
 inner join salary s on s.emp_id = e.emp_id 
 where e.depart_name in ( 'HR' , 'Data Analyst') and s.salary < 900000;
 
 -- ( LEFT JOIN IN SQL JOINS ) ---
 -- ( list of all employees along with their salary)--
 select concat(f_name , " " , l_name ) as emp_name,
 s.salary,
 s.bonus
 from employees  e
 left join salary s on e.emp_id = s.emp_id ;
 
 -- (Get the full names and in-time of all employees) --
 select concat(e.f_name , " " , e.l_name ) as full_name ,
 a.in_time 
 from employees e
 left join attendance a on e.emp_id = a.emp_id ;
 select * from department;
 -- ( Show employees and their managers ids  (if any)) -- ( INFOSYS & COGNIZANT)
 select concat(e.f_name , "   " , e.l_name ) as emp_name ,
 d.manager_id 
 from  employees e
 left join department d on e.depart_name = d.depart_name ;
 
 -- (  List all employees along with their attendance in-time for (2024-06-03 ) and today ('2025-07-25'), even if they were absent.)
 select concat(e.f_name , " " , e.l_name ) as emp_name ,
 a.in_time,
 a.attend_date 
 from employees e
 left join attendance a on e.emp_id = a.emp_id
 where a.attend_date = '2024-06-03'and '2025-07-25';
 select * from attendance;
 
 -- (List all employees ,depart name and the time they reported late (after 09:00 AM), even if they don’t have attendance recorded.
 select concat( e.f_name , " " , e.l_name ) as emp_name,
 e.depart_name ,
 a.in_time  as late_comers_in_time
 from employees e
 left join attendance a on e.emp_id = a.emp_id 
 where a.in_time > '09:00:00'  ;
 
-- ( USE OF LEFT JOIN ON MULTIPLE TABLES ) --
 select  distinct concat(e.f_name , " " , e.l_name ) as Emp_name ,
 e.depart_name ,
 s.salary, 
 s.bonus, 
 a.in_time, 
 a.out_time
 from employees e
 left join salary s on e.emp_id = s.emp_id
 left join attendance a on e .emp_id = a.emp_id
 where e.depart_name in( 'HR','Data Analyst' , 'SDE','Finance') 
 and (a.in_time > '09:00:00'or  a.in_time is NUll );
 
 
 
 
 
 
 
 
 

 
 
 
 
 






















 
 
 




















