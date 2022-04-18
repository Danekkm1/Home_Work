 --1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
 select employees.employee_name, salary.monthly_salary from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id;
 
 -- 2. ������� ���� ���������� � ������� �� ������ 2000.
 select employees.employee_name, salary.monthly_salary from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 where monthly_salary < 2000;
 
 --3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_salary.employee_id, salary.monthly_salary, employees.employee_name from salary 
join employee_salary on salary.id = employee_salary.salary_id
left join employees on employee_salary.employee_id = employees.id
where employee_id > 70;

 --4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_salary.employee_id, salary.monthly_salary, employees.employee_name from salary 
join employee_salary on salary.id = employee_salary.salary_id
left join employees on employee_salary.employee_id = employees.id
where employee_id > 70 and monthly_salary < 2000;
 

 --5. ����� ���� ���������� ���� �� ��������� ��.
select employees.employee_name, employee_salary.salary_id from employees
left join employee_salary on employees.id = employee_salary.employee_id
where salary_id is null;

 --6. ������� ���� ���������� � ���������� �� ���������.
 select employee_name, role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id; 
 
 --7. ������� ����� � ��������� ������ Java �������������.
  select employee_name, role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Java dev%';

 
 --8. ������� ����� � ��������� ������ Python �������������.
 select employee_name, role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Python%';
 
 --9. ������� ����� � ��������� ���� QA ���������.
 select employee_name, role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';
 
 --10. ������� ����� � ��������� ������ QA ���������.
 select employee_name, role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Manual QA%';
 
 --11. ������� ����� � ��������� ��������������� QA
 select employee_name, role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Automation QA%';
 
 --12. ������� ����� � �������� Junior ������������

  select employees.employee_name, salary.monthly_salary, role_name  from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
 where role_name like '%Junior%';


 --13. ������� ����� � �������� Middle ������������
 select employees.employee_name, salary.monthly_salary, role_name  from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
 where role_name like '%Middle%';

 
 --14. ������� ����� � �������� Senior ������������
 select employees.employee_name, salary.monthly_salary, role_name  from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
 where role_name like '%Senior%';

 
 --15. ������� �������� Java �������������
 select salary.monthly_salary, role_name  from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
 where role_name like '%Java dev%';



 
 --16. ������� �������� Python �������������
 select salary.monthly_salary, role_name  from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
 where role_name like '%Python%';
 
 --17. ������� ����� � �������� Junior Python �������������
 select employees.employee_name, salary.monthly_salary, role_name  from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
 where role_name like '%Junior Python%';

 
 --18. ������� ����� � �������� Middle JS �������������
 select employees.employee_name, salary.monthly_salary, role_name  from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
 where role_name like '%Middle JavaScript%';

 
 --19. ������� ����� � �������� Senior Java �������������
 select employees.employee_name, salary.monthly_salary, role_name  from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
 where role_name like '%Middle Java dev%';

 
 --20. ������� �������� Junior QA ���������
 select salary.monthly_salary, role_name  from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
 where role_name like '%Junior%' and role_name like '%QA%' ;
 
 
 --21. ������� ������� �������� ���� Junior ������������
 select avg(salary.monthly_salary) from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
 where role_name like '%Junior%';


 
 --22. ������� ����� ������� JS �������������
  select sum(salary.monthly_salary) from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
 where role_name like '%JavaScript%';
 
 --23. ������� ����������� �� QA ���������
  select min(salary.monthly_salary) from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
 where role_name like '%QA%';
 
 --24. ������� ������������ �� QA ���������
 select max(salary.monthly_salary)   from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
 where role_name like '%QA%';
 
 --25. ������� ���������� QA ���������
select count(role_name) from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
where role_name like '%QA%';
 
 --26. ������� ���������� Middle ������������.
select count(role_name) from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
where role_name like '%Middle%';
 
 --27. ������� ���������� �������������
select count(role_name) from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
where role_name like '%developer%'; 
 
--28. ������� ���� (�����) �������� �������������.
 select sum(salary.monthly_salary) from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
where role_name like '%developer%';
 
 --29. ������� �����, ��������� � �� ���� ������������ �� �����������
 select employee_name, role_name, monthly_salary from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
 order by salary.monthly_salary;
 
 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
 select employee_name, role_name, monthly_salary from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
 where monthly_salary between 1700 and 2300
 order by salary.monthly_salary;
 
 
 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
 select employee_name, role_name, monthly_salary from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
 where monthly_salary < 2300
 order by salary.monthly_salary;
 
 
 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employees  
 join employee_salary on employees.id  = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
 join roles on salary.id = roles.id
 where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
 order by salary.monthly_salary
 
