-- "EXPERIMENT 2"
--DROP TABLE students;
--
--CREATE TABLE students (
--    sno NUMBER(1),
--    sname CHAR(10),
--    m1 NUMBER(3),
--    m2 number(3),
--    addr CHAR(10)
--);

--INSERT INTO students (sno, sname, m1, m2, addr) VALUES (1, 'bhanu', 100, 100, 'vja');
--select * from students;

--INSERT INTO students (sno, sname, addr) VALUES (2, 'kiran', 'kanuru');
--select * from stuDENTS

--INSERT INTO sudents('&sno', '&sname', '&m1', '&m2', '&addr');  WRONG EXECUTION
--INSERT INTO students VALUES (&SNO, '&sname', &m1, &m2, '&addr');


--update students set m1=67, m2=90 WHERE sno = 2;
--select * from students;

-- without the where clause all the data in the table will get updated
--update students set addr = 'amv';

--rollback;
select * from students;