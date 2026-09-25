-- find the sum of emp salary basing on the deptno
SELECT deptno, sum(sal)
FROM emp
GROUP BY deptno;

-- find the sum of emp salary basing on dept name
SELECT D.dname, SUM(E.sal)
FROM emp E, dept D
WHERE D.deptno = E.deptno
GROUP BY D.dname;

-- find the sum of emp salary basing on deptno, deptname
SELECT E.deptno, D.dname, SUM(E.sal)
FROM emp E, dept D
WHERE D.deptno = E.deptno
GROUP BY D.dname, E.deptno;

-- above query with condn that atleast 4 employees should be there in a dept
SELECT dname, sum(sal)
FROM emp e, dept d
WHERE e.deptno = d.deptno
GROUP BY dname
HAVING COUNT(dname) >4;

-- select the details on emp in the ascending order of their ename
SELECT *
FROM emp 
ORDER BY ename;

-- select the details on emp in the desending order of their ename
SELECT *
FROM emp 
ORDER BY ename desc;

-- display teh details of employee in alpha order basing on their job
SELECT * 
FROM emp
ORDER BY job;

-- above query with condn that atleast 4 employees should be there in a dept with in the alpha order of deptname
SELECT dname, sum(sal)
FROM emp e, dept d
WHERE e.deptno = d.deptno
GROUP BY dname
HAVING COUNT(dname) >4
ORDER BY dname;

-- above query with condn that atleast 4 employees should be there in a dept with in the alpha order sum(sal)
SELECT dname, sum(sal)
FROM emp e, dept d
WHERE e.deptno = d.deptno
GROUP BY dname
HAVING COUNT(dname) > 4
ORDER BY SUM(sal);

-- create a index file for the emp table
CREATE INDEX ex_emp
ON emp(empno, ename, sal);


-- find the index file created for the emp table
SELECT * FROM USER_INDEXES
WHERE INDEX_NAME = 'EX_EMP';




-- assignment ques

CREATE TABLE SAILORS(
    sid NUMBER(2) primary key,
    sname VARCHAR2(10),
    rating NUMBER(2),
    age NUMBER(2)
);

CREATE TABLE boats(
    bid NUMBER(3),
    bname VARCHAR2(10),
    color VARCHAR2(10)
);


INSERT INTO sailors values(&sid, '&sname', &rating, &age);

I

    