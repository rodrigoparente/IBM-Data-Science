-- 1. Accessing multiple tables with sub-queries

-- 1a. Retrieve only the EMPLOYEES records corresponding to jobs in the JOBS table

SELECT * FROM EMPLOYEES WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS);

-- 1b. Retrieve JOB information for employees earning over $70,000

SELECT JOB_TITLE, MIN_SALARY, MAX_SALARY, JOB_IDENT
FROM JOBS
WHERE JOB_IDENT IN (select JOB_ID from EMPLOYEES where SALARY > 70000 );

-- 2. Accessing multiple tables with Implicit Joins

-- 2a. Retrieve only the EMPLOYEES records corresponding to jobs in the JOBS table

SELECT *
FROM EMPLOYEES, JOBS
WHERE EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;

-- 2b. Redo the previous query using shorter aliases for table names

SELECT *
FROM EMPLOYEES E, JOBS J
WHERE E.JOB_ID = J.JOB_IDENT;

-- 2c. In the previous query, retrieve only the Employee ID, Name, and Job Title

SELECT EMP_ID,F_NAME,L_NAME, JOB_TITLE
FROM EMPLOYEES E, JOBS J
WHERE E.JOB_ID = J.JOB_IDENT;

-- 2d. Redo the previous query, but specify the fully qualified column names with aliases in the SELECT clause

SELECT E.EMP_ID, E.F_NAME, E.L_NAME, J.JOB_TITLE
FROM EMPLOYEES E, JOBS J
WHERE E.JOB_ID = J.JOB_IDENT;

-- Pratice Problem

-- 1. Retrieve only the list of employees whose JOB_TITLE is Jr. Designer

-- 1a.  Using sub-queries

SELECT *
FROM EMPLOYEES
WHERE JOB_ID IN (SELECT JOB_IDENT
                 FROM JOBS
                 WHERE JOB_TITLE= 'Jr. Designer');

-- 1b. Using Implicit Joins

SELECT *
FROM EMPLOYEES E, JOBS J
WHERE E.JOB_ID = J.JOB_IDENT AND J.JOB_TITLE= 'Jr. Designer';

-- 2. Retrieve JOB information and a list of employees whose birth year is after 1976

-- 2a. Using sub-queries

SELECT JOB_TITLE, MIN_SALARY, MAX_SALARY, JOB_IDENT
FROM JOBS
WHERE JOB_IDENT IN (SELECT JOB_ID
                    FROM EMPLOYEES
                    WHERE YEAR(B_DATE)>1976 );

-- 2b. Using implicit join

SELECT J.JOB_TITLE, J.MIN_SALARY, J.MAX_SALARY, J.JOB_IDENT
FROM JOBS J, EMPLOYEES E
WHERE E.JOB_ID = J.JOB_IDENT AND YEAR(E.B_DATE)>1976;