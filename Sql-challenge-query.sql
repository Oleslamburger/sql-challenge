
-- 1
select employees.emp_no, last_name, first_name, sex, salary
from employees
inner join salaries on employees.emp_no=salaries.emp_no;
-- 2
select first_name, last_name, hire_date
from employees
Where hire_date between'1986-01-01' and '1986-12-31'

-- 3 
select dept_manager.emp_no, dept_manager.dept_no, departments.dept_name, last_name, first_name
from dept_manager
inner join departments on dept_manager.dept_no=departments.dept_no
inner join employees on dept_manager.emp_no=employees.emp_no;

-- 4 
select employees.emp_no, last_name, first_name, dept_emp.dept_no, departments.dept_name 
from employees
inner join dept_emp on employees.emp_no=dept_emp.emp_no
inner join departments on dept_emp.dept_no=departments.dept_no;

-- 5
select first_name,last_name,sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- 6
select employees.emp_no, last_name, first_name
from employees
inner join dept_emp on employees.emp_no=dept_emp.emp_no
inner join departments on dept_emp.dept_no=departments.dept_no
where departments.dept_name = 'Sales';

--7
select employees.emp_no, last_name, first_name, departments.dept_name
from employees
inner join dept_emp on employees.emp_no=dept_emp.emp_no
inner join departments on dept_emp.dept_no=departments.dept_no
where departments.dept_name = 'Sales'
Or departments.dept_name = 'Development';

--8
select last_name, count(last_name) as "valuecount"
from employees
group by last_name
Order by "valuecount" DESC;
