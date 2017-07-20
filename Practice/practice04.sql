--문제1
select count(*)
from employees e
where e.salary < (select avg(salary)
                  from employees);
                  
--문제2
-------풀이1
select e.employee_id "직원번호", 
       e.last_name "성", 
       e.salary "급여"
from employees e
where (e.department_id, e.salary) in (select department_id, max(salary)
                                      from employees
                                      group by department_id)
order by e.salary desc;

-------풀이2
select e.employee_id "직원번호", 
       e.last_name "성", 
       e.salary "급여"
from employees e, (select department_id, max(salary) salary
                   from employees
                   group by department_id) s
where e.department_id = s.department_id
and e.salary = s.salary
order by e.salary desc;


                  
--문제3
-------풀이1
select j.job_title "업무명", 
       s.sumSalary "업무총합"
from jobs j, (select job_id, sum(salary) sumSalary
            from employees
            group by job_id ) s
where j.job_id = s.job_id
order by sumSalary desc;


-------풀이2 join 만으로 ///job_title로 그룹은 문제가 있을수 있다.
select  j.job_title "업무명", 
        sum(e.salary) "연봉총합"
from employees e, jobs j
where e.job_id = j.job_id
group by j.job_title 
order by sum(e.salary) desc;


--문제4
-------풀이            
select e.employee_id "직원번호", 
       e.last_name "성",
       e.salary "급여"
from employees e, 
     (select department_id, avg(salary) avgSalary
      from employees
      group by department_id) s
where e.department_id = s.department_id
and e.salary > s.avgSalary
