select abs(42), abs(-68) from dual;
 select exp(3), exp(-4) from dual;
 select mod(15, 4), mod(10, 3) from dual;

select round(35.642, 2), round(29.542, 2) from dual;
select round(26.6876, -2), round(40644.765, -3) from dual;
select round(675.87, -1) from dual;
select round(42.876, 2), round(67810.76527, -2), trunc(42.876, 2), trunc(67810.76527, -2) from dual;
select sqrt(36), sqrt(42),  sqrt(1), sqrt(0) from dual;

desc employee;

select count(salary) from employee;


--select upper('bhanu'), lower('Kiran') from dual;

--select upper(lower('Bhanu')) from dual;

--select ltrim('bhanuit', 'it') from dual;
--select ltrim('cseit', 'cse') from dual;
--select rtrim('bhanuit', 'it') from dual;
--select rtrim(ltrim('bhanukiranp','kiran'), 'kiran');

select replace('bhanu kiran p', 'n' ) from dual;

select  concat('bhanu', 'kiran') from dual;
select concat('bhanu', 'kiran') combined from dual;

select concat(sysdate, 'aug') "combined" from dual;

select lpad('bhanu', 15, '-') from dual;

select lpad('bhanu', 70, '+') "left add", rpad('kiran', 70, '=') "right add" from dual;

select length('my name is bhanu kiran') from dual;

select length('my name is bhanu kiran') "length" from dual;

-- Sub strings

select substr('my name is bhanu kiran', 4, 10) "substring" from dual;

select substr('my name is bhanu kiran',4 ) "substring" from dual;

select substr('my name is bhanu kiran',-11, 9 ) "substring" from dual;

select instr('my name is bhanu kiran', 'kiran') "instring" from dual;

select instr('my name is bhanu kiran', 'k') "instring" from dual;

select instr('my name is bhanu kirans', 'ns') "instring" from dual;

select * from students;

select count(m1) from students;  -- number of rows
select * from students;
insert into students (sno, sname, m1) values (7, 'ron', 20);
select count(m2) from students;  -- this function does not include null values
select sum(m1) from students;
select sum(m2) from students;

-- IMP NOTES --
-- 1. count 
-- number of rows, do not include null values

-- 2. sum
-- gives the sum of all the rows in the column
-- do not include null values

-- 3. avg, 4. max, 5. min have the same properties as the above two

select initcap(sname) from students;
select initcap(sname) from students where sno = 7;






