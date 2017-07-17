/*문제 1. 
전체직원의 다음 정보를 조회하세요. 
정렬은 입사일(hire_date)의 올림차순(ASC)으로 가장 선임부터 출력이 되도록 하세요. 
이름(first_name last_name), 급여(salary), 전화번호(phone_number) 순서이고 
“이름”, “급여”, “전화번호”로 컬럼이름을 대체해 보세요.*/
select first_name || ' ' || last_name "이름",
       salary "급여",
       phone_number "전화번호"
from employees
order by hire_date asc;


/*문제 2.
업무(JOBS)별로 업무이름(JOB_TITLE)과 최대임금(max_salary)을 임금의 내림차순(DESC)으로
정렬하세요.*/
select job_title,
       max_salary
from jobs
order by max_salary desc;


/*문제 3.
매니저가 없는 직원은 몇 명입니까?*/
select count(*)
  from employees
where manager_id  is null;

/*문제4.
업무(JOB_TITLE)를 이름, 최대급여의(max_salary) 내림차순(DESC)로 정렬하세요.*/    
select job_title,
       max_salary
from jobs
order by max_salary desc;


/*문제5.
부서는 총 몇 개가 있나요?*/
select count(*)
from departments;


/*문제6.
전체 부서를 출력하려고 합니다. 순서는 부서이름이 긴 순서대로 출력해 보세요.*/
select department_name 
from departments
order by length( department_name ) desc; 


/*문제7.
매니저가 없는 부서가 존재하나요? 몇 개나 존재하나요?*/
select count(*)
from departments
where manager_id is null;


/*문제8.
정확하지 않지만, 지사가 있을 것으로 예상되는 나라들을 나라이름을 대문자로 출력하고
올림차순(ASC)으로 정렬해 보세요*/
select upper(country_name)
from countries
order by upper(country_name) asc;  


/*문제9.
전 세계를 몇 개의 지역으로 나누어 관리하고 있나요? 각 지역의 이름 길이의 올림차순으로
정렬하세요.*/
select region_name
from regions
order by length(region_name) asc; 


/*문제10
부서 사무실이 위치한 도시는 어떤 것들이 있습니까? 
중복되지 않도록 도시 이름을 소문자로 올림차순(ASC)로 정렬해 주세요*/
select distinct lower(city)
from locations
order by lower(city) asc;


