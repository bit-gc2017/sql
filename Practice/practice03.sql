--문제1 (105명)
select e.employee_id "사번", 
       e.first_name "이름", 
       d.department_name "부서명",
       m.first_name "매니저이름"
from employees e, 
     departments d, 
     employees m
where e.department_id = d.department_id
and e.manager_id = m.employee_id;


--문제2(25개국)
select c.country_name "나라이름",
       r.region_name "지역이름"
from countries c, regions r
where c.region_id = r.region_id
order by r.region_name desc, c.country_name desc;


--문제3 (11개)
select d.department_id "부서번호",
       d.department_name "부서이름",
       e.first_name "매니저이름",
       l.city "위치한도시",
       c.country_name "나라",
       r.region_name "지역명"
from departments d,
     employees e,
     locations l,
     countries c,
     regions r
where d.manager_id = e.employee_id
and d.location_id = l.location_id
and l.country_id = c.country_id
and c.region_id = r.region_id
order by d.department_id asc;


--문제4 (2명)
select  e.employee_id "사번",
        e.first_name ||' '||e.last_name "이름"
from jobs j, job_history jh, employees e
where j.job_id=jh.job_id
and jh.employee_id = e.employee_id
and job_title='Public Accountant';


--문제5 (107명)
select e.employee_id "사번",
       e.first_name "이름",
       e.last_name "성",
       nvl(d.department_name, '없음') "부서이름"
  from employees e, departments d
  where e.department_id=d.department_id(+)
order by e.last_name asc;


--문제6 (37명)
select e.employee_id as "사번",
       e.last_name as "성",
	     e.hire_date as "채용일",
	     m.last_name as "매니저 성",    -- 참고    
	     m.hire_date as "매니저 채용일"  -- 참고
from employees e, employees m
where e.manager_id = m.employee_id
and e.hire_date <  m.hire_date;
