1--Q1. Create view WeakStudent on Student whose GPA is less than 3.7.


CREATE VIEW WeakStudent AS 
SELECT * FROM STUDENT
WHERE GPA <3.7

SELECT * FROM WEAKSTUDENT


2--
Q2. Create a view cView on college (containing all the columns) and rename the column cName as collegeName and enrollment as seats respectivelY

CREATE VIEW cVIEW(collegeName,state,seats) as
SELECT *
from college


select * from cVIEW



3 --Q3. Create view CSaccept having IDs and college of student who applied to CS major and their application is accepted.


CREATE OR REPLACE VIEW CSAccept as
SELECT SID,CNAME
FROM APPLY 
WHERE MAJOR  = 'CS' AND DECISION = 'Y'

SELECT * FROM CSACCEPT


q4 --  basic view not in ques

CREATE OR REPLACE VIEW CSBERKELEY AS
SELECT SID,SNAME,GPA,SIZEHS
FROM STUDENT NATURAL JOIN APPLY
WHERE SIZEHS >500 AND CNAME = 'Berkeley' AND DECISION = 'Y' AND MAJOR = 'CS'

SELECT  * FROM CSBERKELEY

--correct view is 


CREATE OR REPLACE VIEW CSBERKELEY AS
SELECT SID,SNAME,GPA,SIZEHS
FROM STUDENT NATURAL JOIN csaccept
WHERE SIZEHS >500 AND CNAME = 'Berkeley'

SELECT  * FROM CSBERKELEY



Q5 -- Q5. Display information about student in CSberk having GPA greater than 3.8.


SELECT * FROM CSBERKELEY 
WHERE GPA >3.8

Q6 --Q6. Drop view CSaccept.

DROP VIEW CSACCEPT

-- Q7. Display all student in CSberkeley

SELECT * FROM CSBERKELEY


--Q8 Q8. Update GPA by 0.8 of students in view WeakStudent who having high school size greater than 1000.


SELECT * FROM WEAKSTUDENT

UPDATE WEAKSTUDENT
SET GPA = GPA + 0.8
WHERE SIZEHS >1000

SELECT  * FROM STUDENT






--Q11. Create a view StuName contain student name and their GPA. Is this View Updatable? If not specify why
CREATE OR REPLACE VIEW STUNAME AS
SELECT SNAME,GPA
FROM STUDENT

SELECT  * FROM STUNAME


CANNOT UPDATE AS NO PRIMARY KEY

--Q12. Create view studentHS having details of student comes from High School of size more than 1000 using with check option.
CREATE OR REPLACE VIEW  STUDENTHS AS
SELECT  * FROM STUDENT 
WHERE SIZEHS> 1000
WITH CHECK OPTION


SELECT * FROM STUDENTHS



--Q13. Try insert detail of a new student Ram with sID 999 having GPA 9.9 and sizeHS 9999 to newly created view studentHS. (Comment is this view updatable?)
INSERT INTO STUDENTHS VALUES(999,'Ram',9.9,9999 , null);

select * from studenths

yes updated


--Q14. Clerk realize he wrongly type sizeHS of Ramu as 9999 it is actually 999. Can you help him to update the value of sizeHS of Ramu.
insert into studenths values('Ramu',999,9.9,999,null)
--Cannot update

----Q15. Now, another boy registered to our system named Ramu with sID 998 having GPA 9.8 and sizeHS 989.


insert into studenths values('Ramu',998,9.8,989,null)


--cannot update as size is less than mentioned --1000