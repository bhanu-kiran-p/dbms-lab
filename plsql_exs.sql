--DECLARE
--gs emp.sal%type;
--ns emp.sal%type;
--ded emp.sal%type;
--t_empno emp.empno%type;
--t_deptno emp.deptno%type;
--t_name  emp.ename%type;
--t_sal  emp.sal%type;
--
--BEGIN
--select empno, ename, deptno, sal
--into t_empno, t_name, t_deptno, t_sal
--from emp
--where empno = '&empno';
--
--t_sal := nvl(t_sal, 0) * 12;
--ded := 3000;
--gs := t_sal + 1200 + 1200;
--ns := gs-ded;
--
--dbms_output.put_line('employee no is ....'||t_empno);
--dbms_output.put_line('employee name is ...'||t_name);
--dbms_output.put_line('employee deptno is ...'||t_deptno);
--dbms_output.put_line('employee deductions are ...'||gs);
--dbms_output.put_line('employee gross salaryis ...'||gs);
--dbms_output.put_line('employee net salary is ...'||ns);
--
--EXCEPTION
--when NO_DATA_FOUND then
--dbms_output.put_line('the specified employee no does not exist');
--
--END;



DECLARE

t_empno emp.empno%type;
t_deptno emp.deptno%type;
t_name  emp.ename%type;
t_sal  emp.sal%type;
hike emp.sal%type;
t_job emp.job%type;

BEGIN
select empno, ename, deptno, sal, job
into t_empno, t_name, t_deptno, t_sal, t_job
from emp
where empno = '&empno';

t_sal := nvl(t_sal, 0) * 12;
hike := 0;

if t_job = 'MANAGER' then
hike := 0.1*t_sal;
elsif t_job = 'CLERK' then
hike := 0.2*t_sal;
elsif t_job = 'ANALYST' then
hike := 0.08*t_sal;
end if;

dbms_output.put_line('employee no is ....'||t_empno);
dbms_output.put_line('employee name is ...'||t_name);
dbms_output.put_line('employee deptno is ...'||t_deptno);
dbms_output.put_line('employe job is ...'||t_job);
dbms_output.put_line('the hike is ...'||hike);

EXCEPTION
when NO_DATA_FOUND then
dbms_output.put_line('the specified employee no does not exist');

END;


