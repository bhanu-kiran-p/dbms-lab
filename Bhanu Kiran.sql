 -- " EXPERIMENT 1 "
 
 -- creating a table
CREATE TABLE stud (sno NUMBER(5), sname CHAR(10), class CHAR(5));

desc stud;

CREATE TABLE class (sno NUMBER(5), subject CHAR(12), credits NUMBER(1));

desc stud;

 -- adding a new field
ALTER TABLE stud add(address VARCHAR2(10));

desc stud;

 -- modifying already existing field
ALTER TABLE stud MODIFY (address VARCHAR2(5));

desc stud;

-- changing the name of a column in a table
ALTER TABLE stud RENAME COLUMN address to addr;

desc stud;

-- deleting a table
DROP TABLE class;

-- 
RENAME stud to students;




