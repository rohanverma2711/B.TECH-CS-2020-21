CREATE TABLE DEPARTMENT
(
    Deptno NUMBER(3) PRIMARY KEY,
    Dname VARCHAR(20) UNIQUE,
    Location VARCHAR(20) NOT NULL 
    CHECK (Location IN ('Agra', 'Delhi', 'Mathura'))
);