USE store;
SHOW tables;
SELECT *
FROM customers;
SELECT *
FROM customers
ORDER BY first_name DESC;
-- 
SELECT 1,2;

SELECT 1+2;

SELECT 100 - 50/2;

SELECT 100 - 50/2 AS 'answer value';

SELECT first_name, last_name, points +10 AS 'new points'
FROM customers  ;




SELECT 171*214+625
 FROM customers LIMIT 1;
 
 USE exercise_hr;
 
 SELECT first_name  AS 'First Name', last_name AS 'Last Name'FROM employees;
 
 SELECT first_name  AS 'First Name', last_name AS 'Last Name' , salary ,  (salary * 15/100) AS 'PF' FROM employees;
 
 SELECT DISTINCT department_id FROM employees ;
 
 -- >    <     <=     >=     <>

use store;
SELECT * 
FROM customers 
WHERE points>3000; 

SELECT *
FROM customers
WHERE birth_date > '1990-01-01';


SELECT*
FROM customers 
WHERE points>3000 OR  birth_date > '1990-01-01';

SELECT*
FROM customers 
WHERE birth_date > '1989-01-01' AND  points > 1000  OR state = 'VA';

SELECT*
FROM customers
WHERE NOT (state = 'FL');


use exercise_hr;

 SELECT first_name,last_name,hire_date
 FROM employees
 WHERE hire_date = '1987';
SELECT first_name,salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000;
SELECT first_name,last_name,department_id
FROM employees
WHERE department_id = 30 OR department_id = 100 
ORDER BY department_id ASC;
SELECT first_name,last_name,salary
FROM employees
WHERE (salary NOT BETWEEN 10000 AND 15000) AND (department_id = 30 OR department_id = 100);
SELECT *
FROM employees
WHERE last_name IN ('BLAKE', 'SCOTT', 'KING','FORD');

use store;
SELECT *
FROM customers
WHERE state = 'FL' OR state = 'VA' OR state = 'GA';

SELECT *
FROM customers
WHERE state IN ('FL','VA','GA');

SELECT *
FROM PRODUCTS
WHERE quantity = (49,38,72);

use store;
SHOW tables;

SELECT*
FROM products
WHERE quantity_in_stock IN  ('49' , '38' , '72');

SELECT*
FROM customers
WHERE birth_date >='1990-01-01' AND birth_date <= '2000-01-01';

USE store;
SELECT *
FROM customers 
WHERE points>=3000 AND points <= 10000; 


USE exercise_hr;

SELECT *
FROM employees
WHERE first_name LIKE '%b%' AND first_name LIKE '%c%';


 SELECT *
 FROM employees
WHERE last_name LIKE '______';
USE store;
SELECT *
FROM customers
WHERE last_name like '__e%' ;

/*
REGEXP:
^ (caret)- starts with
$ - ends with
| (pipe)- 
* - for many times
NULL - no value
*/


USE store;

select *
from customers
where last_name regexp '^my|se';

select *
from customers
where last_name regexp 'my$|be';  


select *
from customers
where last_name regexp 'b[ru]';  


select *
from customers
where last_name regexp 'br|bu'; 


select *
from customers
where last_name regexp 'b[a-z]*[ru]'; 

USE STORE;
select *
from customers
where phone IS NOT null; 

select *
from customers
where phone IS  null;

 
use store;
select *
from orders
where shipped_date IS  null; 


use exercise_hr;
select employee_id , first_name, department_id
from employees
 order by department_id, first_name; 
 
 
  use store;
 select * 
 from customers limit 3;
  use store;
  
 select * 
 from customers  
 order by points desc limit 3;
 
 
 
 /*
 the lmit clause should always come at the end 
 the order of the clauses matter,\. select -> from -> optinally where -> optinallly order by -> limit 
 not following the  order error
 */
 
--  create table user (
-- username varchar(50) primary key,
-- password varchar(50) ,
-- dob date,
-- phone varchar(20),
-- email varchar(100),
-- first_name varchar(50),
-- last_name varchar(50)
-- )


use exercise_hr;
select*
from employees  inner join departments
on employees.department_id = departments.department_id;

select employee_id, first_name, last_name, e.department_id,department_name
from employees as e inner join departments as d
on e.department_id = d.department_id
where department_name = 'IT';

select employee_id, first_name, last_name, e.department_id,department_name
from employees as e inner join departments as d
on e.department_id = d.department_id
where department_name = 'IT';








