--문제1
select max(salary) as "최고임금", 
       min(salary) as "최저임금", 
	     max(salary) - min(salary) as "최고임금-최저임금"
from employees;


--문제2.
select to_char(max(hire_date), 'YYYY"년 "MM"월 "DD"일"')
from employees;


--문제3.
select avg(salary), 
       max(salary), 
       min(salary), 
       department_id
from employees
group by department_id
order by avg(salary) desc, max(salary), min(salary);


--문제4.
select avg(salary),
       max(salary),
       min(salary),
       job_id
from employees
group by job_id
order by avg(salary) desc, max(salary) desc, min(salary);

--문제5.
select to_char(min(hire_date), 'YYYY"년 "MM"월 "DD"일"')
from employees;


--문제6.
select department_id,
       avg(salary),
       min(salary),
       avg(salary)-min(salary)
from employees
group by department_id
having avg(salary)-min(salary) <2000
order by avg(salary)-min(salary) desc;


--문제7
select job_id, max(salary)-min(salary) as diff
from employees
group by job_id
order by diff desc;

select job_title
from jobs
where job_id = 'SA_REP';

