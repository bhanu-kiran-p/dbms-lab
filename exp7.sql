create view employee
as select empno, ename, job
from emp
wehere job='clerk';

create view vw_emp_dept
as select e.ename, e.sal, d.deptno, d.dname, d.loc
from emp e, dept d
where e.deptno= d.deptno and d.deptno != 30;
-- all the vies will bve 
desc user_views;

select * from user_views
where view_name = 'VS_EMP_DEPT';

select * from user_views;
select * from vw_emp_dept;

update vw_emp_dept set loc = 'vja' where loc = 'DALLAS';

update dept set loc='vja' where loc='DALLAS';

select * from vw_emp_dept; 

select * from salgrade;
select * from dept;
select * from emp;

create view vw_emp_sal
as select e.ename, e.job, e.sal, s.grade, s.losal, s.hisal
from emp e, salgrade s
where e.sal between s.losal and s.hisal;

select * from vw_emp_sal;

drop view vw_emp_sal;


select empno, ename, job
from emp
where job = (select job from emp where ename = 'CLARK' and deptno = 10);


select empno , ename, job,deptno
from emp
where deptno = (select deptno from emp where ename='SCOTT');

select * from emp;

select empno, ename, deptno, sal
from emp
where sal > (select sal from emp where deptno = 20);
-- this gives an error that a single row subquery returns more than one row

select empno, ename, deptno, sal
from emp
where sal > any(select sal from emp where deptno = 20);

select empno, ename, deptno, sal
from emp
where sal > all(select sal from emp where deptno = 20);


select * from emp;

