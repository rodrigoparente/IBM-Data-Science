-- INSERT

-- 1. Insert a new instructor record with id 7 for Antonio Cangiano who lives in Vancouver, CA into the "Instructor" table

INSERT INTO Instructor(ins_id, lastname, firstname, city, country) VALUES (7, 'Cangiano', 'Antonio', 'Vancouver', 'CA');

-- 2. Insert two new instructor records into the "Instructor" table. First record with id 8 for Steve Ryan who lives in Barlby, GB. Second record with id 9 for Ramesh Sannareddy who lives in Hyderabad, IN

INSERT INTO Instructor(ins_id, lastname, firstname, city, country) VALUES (8, 'Ryan', 'Steve', 'Barlby', 'GB'), (9, 'Sannareddy', 'Ramesh', 'Hyderabad', 'IN');

-- UPDATE

-- 1. Update the city of the instructor record to Markham whose id is 1

UPDATE Instructor SET city='Markham' WHERE ins_id=1;

-- 2. Update the city and country for Sandip with id 4 to Dhaka and BD respectively

UPDATE Instructor SET city='Dhaka', country='BD' WHERE ins_id=4;

-- DELETE

-- 1. Remove the instructor record of Hima

DELETE FROM Instructor WHERE firstname = 'Hima';