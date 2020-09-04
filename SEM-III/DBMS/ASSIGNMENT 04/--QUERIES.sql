--QUERY 1
SELECT COUNT(SID) FROM STUDENT;
--QUERY 2
SELECT AVG(GPA) FROM STUDENT;

--QUERY 3
SELECT MIN(GPA) AS min_GPA
FROM STUDENT;
SELECT MAX(GPA) AS max_GPA
FROM STUDENT;
--QUERY 4
SELECT COUNT(SID) 
FROM STUDENT
WHERE GPA >= 3.7;

--QUERY 5
SELECT MAX(GPA),MIN(GPA),AVG(GPA),SUM(GPA)
FROM STUDENT;

--QUERY 6
SELECT COUNT(CNAME) FROM COLLEGE;

--QUERY 7
SELECT COUNT(DISTINCT(MAJOR)) AS DIFF_MAJ 
FROM APPLY;
--QUERY 8
SELECT COUNT(SID) AS APPLI 
FROM APPLY;
--QUERY 9
SELECT AVG(DISTINCT(GPA)) FROM STUDENT;

--QUERY 10
SELECT SID,CNAME,MAJOR,DECISION  FROM APPLY WHERE DECISION = 'Y';

--Q11. Find number of students having GPA>3.4 and coming from high school having size>1000.

SELECT COUNT(sID) FROM STUDENT WHERE GPA >3.4 AND sizeHS >1000;


--Q12. Find how many student applied to ‘marine biology’.

SELECT COUNT(sID) APPLIED_STUDENTS
FROM APPLY 
WHERE major = 'marine biology';


--Q13. Find how many applications were rejected and accepted by the colleges.

SELECT COUNT(SID) APPLIED_STUDENTS
FROM APPLY 
WHERE DECISION = 'Y';
SELECT COUNT(SID) REJECTED_STUDENTS
FROM APPLY 
WHERE DECISION = 'N';

--Q14. Find how many students applied to a particular major. (show count(sid) as No_of_applications).
SELECT MAJOR,COUNT(SID) NO_OF_APPLICATIONS
FROM APPLY
GROUP BY MAJOR;


--Q15. Find number of applications received by particular college

SELECT cNAME,COUNT(SID) NO_OF_APPLICATIONS
FROM APPLY
GROUP BY cNAME;

--Q16. Find number of applications received in a particular major at a particular college.

SELECT cNAME,MAJOR,COUNT(SID) NO_OF_APPLICATIONS
FROM APPLY
GROUP BY cNAME,MAJOR;

