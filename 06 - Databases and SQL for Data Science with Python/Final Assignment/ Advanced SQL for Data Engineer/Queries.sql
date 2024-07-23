-- Exercise 1 - Using Joins

-- 1. Write and execute a SQL query to list the school names, community names and average attendance for communities with a hardship index of 98

SELECT 
    cps.NAME_OF_SCHOOL,
    csd.COMMUNITY_AREA_NAME,
    cps.AVERAGE_STUDENT_ATTENDANCE
FROM 
    chicago_public_schools cps
LEFT JOIN 
    chicago_socioeconomic_data csd
ON 
    cps.COMMUNITY_AREA_NUMBER = csd.COMMUNITY_AREA_NUMBER
WHERE 
    csd.HARDSHIP_INDEX = '98';

-- 2. Write and execute a SQL query to list all crimes that took place at a school. Include case number, crime type and community name

SELECT 
    cc.CASE_NUMBER,
    cc.PRIMARY_TYPE,
    csd.COMMUNITY_AREA_NAME
FROM 
    chicago_crime cc
LEFT JOIN 
    chicago_socioeconomic_data csd
ON 
    cc.COMMUNITY_AREA_NUMBER = csd.COMMUNITY_AREA_NUMBER
WHERE 
    cc.LOCATION_DESCRIPTION LIKE '%SCHOOL%';


-- Exercise 2 - Creating a View

-- 1a. Write and execute a SQL statement to create a view showing the columns listed in the following table, with new column names as shown in the second column

CREATE VIEW School_Ratings_View AS
SELECT 
    NAME_OF_SCHOOL AS School_Name,
    Safety_Icon AS Safety_Rating,
    Family_Involvement_Icon AS Family_Rating,
    Environment_Icon AS Environment_Rating,
    Instruction_Score AS Instruction_Rating,
    Leaders_Score AS Leaders_Rating,
    Teachers_Score AS Teachers_Rating
FROM 
    chicago_public_schools;

-- 1b. Write and execute a SQL statement that returns all of the columns from the view

SELECT * FROM School_Ratings_View;

-- 1c. Write and execute a SQL statement that returns just the school name and leaders rating from the view

SELECT School_Name, Leaders_Rating
FROM School_Ratings_View;

-- Exercise 3 - Creating Procedures

-- 1. Write the structure of a query to create or replace a stored procedure called UPDATE_LEADERS_SCORE that takes a School_ID parameter as an integer and a Leader_Score parameter as an integer

DELIMITER //

CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_SCORE(
    IN in_School_ID INT,
    IN in_Leader_Score INT
)
BEGIN
    
END //

DELIMITER ;


-- 2. Inside your stored procedure, write a SQL statement to update the Leaders_Score field in the CHICAGO_PUBLIC_SCHOOLS table for the school identified by School_ID to the value in the Leader_Score parameter

DELIMITER //

CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_SCORE(
    IN in_School_ID INT,
    IN in_Leader_Score INT
)
BEGIN
    -- Update the Leaders_Score field
    UPDATE chicago_public_schools
    SET Leaders_Score = in_Leader_Score
    WHERE School_ID = in_School_ID;
END //

DELIMITER ;

-- 3. Write the structure of a query to create or replace a stored procedure called UPDATE_LEADERS_SCORE that takes a School_ID parameter as an integer and a Leader_Score parameter as an integer.  Inside the stored procedure, write a SQL statement to update the Leaders_Score field in the CHICAGO_PUBLIC_SCHOOLS table for the school identified by School_ID to the value in the in Leader_Score parameter

DELIMITER //

CREATE PROCEDURE UPDATE_LEADERS_SCORE(
    IN in_School_ID INT,
    IN in_Leader_Score INT
)
BEGIN
    UPDATE chicago_public_schools
    SET Leaders_Score = in_Leader_Score
    WHERE School_ID = in_School_ID;

    IF (in_Leader_Score >0 AND in_Leader_Score <20) THEN
        UPDATE chicago_public_schools
        SET Leaders_Icon ='Very Weak'
        WHERE School_ID = in_School_ID;
    ELSEIF in_Leader_Score < 40 THEN 
        UPDATE chicago_public_schools
        SET Leaders_Icon ='Weak'
        WHERE School_ID = in_School_ID;
    ELSEIF in_Leader_Score < 60 THEN 
        UPDATE chicago_public_schools
        SET Leaders_Icon ='Average'
        WHERE School_ID = in_School_ID;
    ELSEIF in_Leader_Score < 80 THEN 
        UPDATE chicago_public_schools
        SET Leaders_Icon ='Strong'
        WHERE School_ID = in_School_ID;
    ELSEIF in_Leader_Score < 100 THEN 
        UPDATE chicago_public_schools
        SET Leaders_Icon ='Very Strong'
        WHERE School_ID = in_School_ID;
    END IF;
END //

DELIMITER ;

-- Exercise 4 - Using Transactions

-- 1. Update your stored procedure definition. Add a generic ELSE clause to the IF statement that rolls back the current work if the score did not fit any of the preceding categories

DELIMITER //

CREATE PROCEDURE UPDATE_LEADERS_SCORE(
    IN in_School_ID INT,
    IN in_Leader_Score INT
)
BEGIN
    -- Start a transaction
    START TRANSACTION;
    
    UPDATE chicago_public_schools
    SET Leaders_Score = in_Leader_Score
    WHERE School_ID = in_School_ID;

    IF (in_Leader_Score >0 AND in_Leader_Score <20) THEN
        UPDATE chicago_public_schools
        SET Leaders_Icon ='Very Weak'
        WHERE School_ID = in_School_ID;
    ELSEIF in_Leader_Score < 40 THEN 
        UPDATE chicago_public_schools
        SET Leaders_Icon ='Weak'
        WHERE School_ID = in_School_ID;
    ELSEIF in_Leader_Score < 60 THEN 
        UPDATE chicago_public_schools
        SET Leaders_Icon ='Average'
        WHERE School_ID = in_School_ID;
    ELSEIF in_Leader_Score < 80 THEN 
        UPDATE chicago_public_schools
        SET Leaders_Icon ='Strong'
        WHERE School_ID = in_School_ID;
    ELSEIF in_Leader_Score < 100 THEN 
        UPDATE chicago_public_schools
        SET Leaders_Icon ='Very Strong'
        WHERE School_ID = in_School_ID;
    ELSE  
        -- Rollback if the score does not fit any category
        ROLLBACK;
    END IF;
END //

DELIMITER ;

-- 2. Update your stored procedure definition again. Add a statement to commit the current unit of work at the end of the procedure

DELIMITER //

CREATE PROCEDURE UPDATE_LEADERS_SCORE(
    IN in_School_ID INT,
    IN in_Leader_Score INT
)
BEGIN
    -- Start a transaction
    START TRANSACTION;
    
    UPDATE chicago_public_schools
    SET Leaders_Score = in_Leader_Score
    WHERE School_ID = in_School_ID;

    IF (in_Leader_Score >0 AND in_Leader_Score <20) THEN
        UPDATE chicago_public_schools
        SET Leaders_Icon ='Very Weak'
        WHERE School_ID = in_School_ID;
    ELSEIF in_Leader_Score < 40 THEN 
        UPDATE chicago_public_schools
        SET Leaders_Icon ='Weak'
        WHERE School_ID = in_School_ID;
    ELSEIF in_Leader_Score < 60 THEN 
        UPDATE chicago_public_schools
        SET Leaders_Icon ='Average'
        WHERE School_ID = in_School_ID;
    ELSEIF in_Leader_Score < 80 THEN 
        UPDATE chicago_public_schools
        SET Leaders_Icon ='Strong'
        WHERE School_ID = in_School_ID;
    ELSEIF in_Leader_Score < 100 THEN 
        UPDATE chicago_public_schools
        SET Leaders_Icon ='Very Strong'
        WHERE School_ID = in_School_ID;
    ELSE  
        -- Rollback if the score does not fit any category
        ROLLBACK;
    END IF;
  
    COMMIT;
END //

DELIMITER ;