-- 1. Aggregation Functions

-- 1a. Write a query that calculates the total cost of all animal rescues in the PETRESCUE table

SELECT SUM(COST) AS SUM_OF_COST FROM PETRESCUE;

-- 1b. Write a query that displays the maximum quantity of animals rescued (of any kind)

SELECT MAX(QUANTITY) FROM PETRESCUE;

-- 1c. Write a query that displays the average cost of animals rescued

SELECT AVG(COST) FROM PETRESCUE;

-- 2. Scalar Functions and String Functions

-- 2a. Write a query that displays the rounded integral cost of each rescue

SELECT ROUND(COST) FROM PETRESCUE;

-- 2b. Write a query that displays the length of each animal name

SELECT LENGTH(ANIMAL) FROM PETRESCUE;

-- 2c. Write a query that displays the animal name in each rescue in uppercase

SELECT UCASE(ANIMAL) FROM PETRESCUE;

-- 3. Date Functions

-- 3a. Write a query that displays the rescue date

SELECT DAY(RESCUEDATE) FROM PETRESCUE;

-- 3b. Animals rescued should see the vet within three days of arrival. Write a query that displays the third day of each rescue

SELECT DATE_ADD(RESCUEDATE, INTERVAL 3 DAY) FROM PETRESCUE;

-- 3c. Write a query that displays the length of time the animals have been rescued, for example, the difference between the current date and the rescue date

SELECT DATEDIFF(CURRENT_DATE, RESCUEDATE) FROM PETRESCUE;

-- Practice Problem

-- 1. Write a query that displays the average cost of rescuing a single dog. Note that the cost per dog would not be the same in different instances

SELECT AVG(COST/QUANTITY) FROM PETRESCUE WHERE ANIMAL = 'Dog';

-- 2. Write a query that displays the animal name in each rescue in uppercase without duplications

SELECT DISTINCT UCASE(ANIMAL) FROM PETRESCUE;

-- 3. Write a query that displays all the columns from the PETRESCUE table where the animal(s) rescued are cats. Use cat in lowercase in the query

SELECT * FROM PETRESCUE WHERE LCASE(ANIMAL) = 'cat';

-- 4. Write a query that displays the number of rescues in the 5th month

SELECT SUM(QUANTITY) FROM PETRESCUE WHERE MONTH(RESCUEDATE) = '05';

-- 5. The rescue shelter is supposed to find good homes for all animals within 1 year of their rescue. Write a query that displays the ID and the target date

SELECT ID, DATE_ADD(RESCUEDATE, INTERVAL 1 YEAR) FROM PETRESCUE;