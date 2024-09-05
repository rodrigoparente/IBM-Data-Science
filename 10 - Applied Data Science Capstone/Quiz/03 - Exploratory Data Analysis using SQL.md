```markdown
1. Which of the following will retrieve up to 20 records from the spacex table?

- [x] `SELECT * FROM SPACEXTBL LIMIT 20`
- [ ] `SELECT * FROM SPACEXTBL MAX 20`
- [ ] `SELECT * FROM SPACEXTBL WHERE COUNT(*) = 20`
- [ ] `SELECT TOP 20 rows FROM SPACEXTBL`

2. Which of the following queries display the minimum payload mass?

- [ ] `SELECT payload_mass__kg_ FROM SPACEXTBL ORDER BY payload_mass__kg_ DESC LIMIT 1`
- [ ] `SELECT payload_mass__kg_ FROM SPACEXTBL ORDER BY payload_mass__kg_ GROUP BY booster_version LIMIT 1`
- [ ] `SELECT payload_mass__kg_ FROM SPACEXTBL WHERE payload_mass__kg_ = (SELECT MAX(payload_mass__kg_) FROM SPACEXTBL) LIMIT 1`
- [x] `SELECT MIN(payload_mass__kg_) FROM SPACEXTBL`

3. You are writing a query that will give you the total payload_mass_kg carried by the booster versions. The mass should be stored in the mass column. You want the result column to be called “Total_Payload_Mass”. Which of the following SQL queries is correct?

- [ ] `SELECT SUM(PAYLOAD_MASS__KG_) FROM SPACEXTBL`
- [ ] `SELECT COUNT(PAYLOAD_MASS__KG_) AS Total_Payload_Mass FROM SPACEXTBL`
- [x] `SELECT SUM(PAYLOAD_MASS__KG_) AS Total_Payload_Mass FROM SPACEXTBL`

4. Which of the following queries is used to display the mission outcome counts for each launch site?

- [ ] `SELECT SUM("Mission_Outcome") AS MISSION_OUTCOME_COUNT, Launch_Site FROM SPACEXTBL GROUP BY "Launch_Site"`
- [x] `SELECT COUNT("Mission_Outcome") AS MISSION_OUTCOME_COUNT, Launch_Site FROM SPACEXTBL GROUP BY "Launch_Site"`

5. What are the unique launch sites mentioned in the Spacex table?

- [ ] `CCAS LC-40, KSC LC-39A, VAFB SLC-4E, CCAFS SLC-80`
- [x] `CCAFS LC-40, KSC LC-39A, VAFB SLC-4E, CCAFS SLC-40`
- [ ] `CCAFS LC-40, KSC LC-39B, VAFB SLC-4K, CCAFS SLC-40`
- [ ] `None of the Above`