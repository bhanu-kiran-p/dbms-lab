--natural join of two tables
select e.empno emp_no, e.ename emp_name, e.job emp_job, d.dname emp_dept, d.loc emp_loc from emp e, dept d where e.deptno=d.deptno;

select e.deptno,e.ename, e.sal, e.job, s.grade from emp e, salgrade s where e.sal between s.losal and s.hisal;

--another way
select e.deptno, e.ename, e.sal, e.job,
s.grade, s.losal, s.hisal 
from emp e, salgrade s where e.sal between s.losal and s.hisal;

create table dummy as select * from salgrade where 1=2;

select e.ename, m.ename, e.sal, m.sal from emp e, emp m where e.empno = m.mgr and e.sal > m.sal;

select e.deptno emp_dept, e.ename emp_name, d.dname, d.loc from emp e, dept d where e.deptno(+) = d.deptno;
-- the side with which the deficiency is should have the plus sign
select e.deptno emp_dept, e.ename emp_name, d.dname dept_name, d.loc dept_loc from emp e, dept d where e.deptno = d.deptno(+);
-- no deficieny for deptno it will give the regular result

select * from dept;



select e.deptno emp_dept, e.ename emp_name, d.dname, d.loc from emp e, dept d where (+)e.deptno = d.deptno; -- throws an error

-- Create the BONUS table
CREATE TABLE bonus (
    ename VARCHAR2(10),
    job   VARCHAR2(9),
    sal   NUMBER,
    comm  NUMBER
);

-- Example insert statements for the bonus table
INSERT INTO bonus (ename, job, sal, comm) VALUES ('FORD', 'ANALYST', 3000, 200);
INSERT INTO bonus (ename, job, sal, comm) VALUES ('SCOTT', 'ANALYST', 3000, 300);
INSERT INTO bonus (ename, job, sal, comm) VALUES ('ALLEN', 'SALESMAN', 1600, 300);

select * from bonus;




