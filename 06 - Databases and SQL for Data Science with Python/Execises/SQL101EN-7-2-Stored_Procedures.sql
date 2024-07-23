-- Stored Procedures

-- Data Used in the Lab

DROP TABLE IF EXISTS PETSALE;

CREATE TABLE PETSALE (
	ID INTEGER NOT NULL,
	ANIMAL VARCHAR(20),
	SALEPRICE DECIMAL(6,2),
	SALEDATE DATE,
	QUANTITY INTEGER,
	PRIMARY KEY (ID)
	);

INSERT INTO PETSALE VALUES
(1,'Cat',450.09,'2018-05-29',9),
(2,'Dog',666.66,'2018-06-01',3),
(3,'Parrot',50.00,'2018-06-04',2),
(4,'Hamster',60.60,'2018-06-11',6),
(5,'Goldfish',48.48,'2018-06-14',24);

-- 1. Create and Execute Stored Procedures

-- 1a. Create a stored procedure routine named RETRIEVE_ALL to retrieve all the records from the PETSALE table

DELIMITER //

CREATE PROCEDURE RETRIEVE_ALL()

BEGIN
   SELECT *  FROM PETSALE;
END //
DELIMITER ;

-- 1b. Execute the stored procedure

CALL RETRIEVE_ALL;

-- 1c. Drop the stored procedure

DROP PROCEDURE RETRIEVE_ALL;

-- 2. Write and Modify Data Procedures

-- 2a. Create a stored procedure routine named UPDATE_SALEPRICE with parameters Animal_ID and Animal_Health
-- This UPDATE_SALEPRICE routine will contain SQL queries to update the sale price of the animals in the PETSALE table depending on their health conditions, BAD or WORSE

-- For animal with ID XX having BAD health condition, the sale price will be reduced further by 25%
-- For animal with ID YY having WORSE health condition, the sale price will be reduced further by 50%
-- For animal with ID ZZ having other health condition, the sale price won't change

DELIMITER @
CREATE PROCEDURE UPDATE_SALEPRICE (IN Animal_ID INTEGER, IN Animal_Health VARCHAR(5))
BEGIN
    IF Animal_Health = 'BAD' THEN
        UPDATE PETSALE
        SET SALEPRICE = SALEPRICE - (SALEPRICE * 0.25)
        WHERE ID = Animal_ID;
    ELSEIF Animal_Health = 'WORSE' THEN
        UPDATE PETSALE
        SET SALEPRICE = SALEPRICE - (SALEPRICE * 0.5)
        WHERE ID = Animal_ID;
    ELSE
        UPDATE PETSALE
        SET SALEPRICE = SALEPRICE
        WHERE ID = Animal_ID;
    END IF;
END @

DELIMITER ;

-- 2b. Call the procedure

CALL UPDATE_SALEPRICE(1, 'BAD');