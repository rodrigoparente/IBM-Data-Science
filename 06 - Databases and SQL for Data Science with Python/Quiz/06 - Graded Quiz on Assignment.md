1. What is the total number of crimes recorded in the CRIME table?

- [ ] 433
- [ ] 555
- [ ] 53
- [x] 533

**Correct!**  
Correct.

2. Which of the following is the correct query to list community areas (name and number) with per capita income less than 11000?

- [ ] `SELECT COMMUNITY_AREA_NUMBER, COMMUNITY_AREA_NAME FROM CENSUS_DATA WHERE PER_CAPITA_INCOME>11000`
- [ ] `SELECT COMMUNITY_AREA_NUMBER, COMMUNITY_AREA_NAME WHERE CENSUS_DATA FROM PER_CAPITA_INCOME<11000`
- [x] `SELECT COMMUNITY_AREA_NUMBER, COMMUNITY_AREA_NAME FROM CENSUS_DATA WHERE PER_CAPITA_INCOME<11000`
- [ ] `SELECT COMMUNITY AREA NUMBER, COMMUNITY_AREA_NAME FROM CENSUS_DATA WHERE PER_CAPITA_INCOME<11000`

**Correct!**  
Correct.

3. When you list all case numbers for crimes involving a minor, how many rows of data are retrieved?

- [ ] 4
- [ ] 3
- [ ] 1
- [x] 2

**Correct!**  
Correct.

4. Which of the following can be used as a query for identifying all kidnapping crimes involving a child?

- [ ] `SELECT * FROM CHICAGO_CRIME_DATA WHERE PRIMARY_TYPE = "KIDNAPPING"`
- [ ] `SELECT * FROM CHICAGO_CRIME_DATA WHERE PRIMARY_TYPE = "KIDNAPPING" AND DESCRIPTION = “%CHILD%”`
- [ ] `SELECT * FROM CHICAGO_CRIME_DATA WHERE DESCRIPTION LIKE “%CHILD%”`
- [x] `SELECT * FROM CHICAGO_CRIME_DATA WHERE PRIMARY_TYPE = "KIDNAPPING" AND DESCRIPTION LIKE “%CHILD%”`

**Correct!**  
Correct.

5. Which two of the following clauses did you use to get the unique list of the types of crimes recorded in schools?

- [ ] COUNT

- [ ] AVERAGE

- [x] DISTINCT

**Correct**
Partially Correct!

- [x] LIKE

**Correct**
Partially Correct!

6. What was the average safety score for middle schools?

- [ ] 46.42
- [ ] 49.62
- [x] 48.0
- [ ] 49.52

**Correct** 
Correct.

7. What would you add to the following query to list five community areas with the highest % of households below the poverty line?

   `SELECT COMMUNITY_AREA_NAME FROM CENSUS_DATA ___________;`

- [ ] `ORDER BY PERCENT_HOUSEHOLDS_BELOW_POVERTY DESC`
- [x] `ORDER BY PERCENT_HOUSEHOLDS_BELOW_POVERTY DESC LIMIT 5`
- [ ] `ORDER BY PERCENT_HOUSEHOLDS_BELOW_POVERTY DESC LIMIT`
- [ ] `ORDER BY PERCENT_HOUSEHOLDS_BELOW_POVERTY LIMIT 5`

**Correct!**  
Correct.

8. Which community area number has the most criminal incidents (most crime-prone)?

- [ ] 36.0
- [ ] 23.0
- [x] 25.0
- [ ] 20.0

**Correct!**  
Correct.

9. Which of the following would be the correct way to use a sub-query to find the name of the community area with the highest hardship index?

- [x] `SELECT COMMUNITY_AREA_NAME FROM CENSUS_DATA WHERE HARDSHIP_INDEX IN (SELECT MAX(HARDSHIP_INDEX) FROM CENSUS_DATA);`
- [ ] `SELECT COMMUNITY_AREA_NAME FROM CENSUS_DATA WHERE HARDSHIP_INDEX IN (SELECT MOST(HARDSHIP_INDEX) FROM CENSUS_DATA);`
- [ ] `SELECT COMMUNITY_AREA_NAME FROM CENSUS_DATA WHERE HARDSHIP_INDEX AS (SELECT MAX(HARDSHIP_INDEX) FROM CENSUS_DATA);`
- [ ] `SELECT COMMUNITY_AREA_NAME FROM CENSUS_DATA WHERE HARDSHIP_INDEX IN (SELECT HARDSHIP_INDEX FROM CENSUS_DATA);`

**Correct!**  
Correct.

10.  What is the name of the community with the most number of crimes?

- [ ] Fuller Park
- [ ] Englewood
- [ ] Riverdale
- [x] Austin

**Correct!**  
Correct.