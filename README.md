## Overview of analysis:   
The executives at Pewlett Hackard are concerned about the number of employees who are approaching retirement age. In order to develop an action plan, they have requested the analyst determine how many employees will be retiring and how many employees will qualify for a mentorship program. 

Pewlett Hackard is still utilizing Excel spreadsheets to collect their employee data. Therefore, the first task for the data analyst was to develop an Entity Relationship Diagram  (ERD) to document the relationships between the 6 provided spreadsheets. After developing the Diagram, the spreadsheets had to be imported into Postgres database application for analysis. 

After the database was created, the analyst was tasked with analyzing the employee data and providing a report to management.

## Results
SQL queries were conducted on the database created in Postgres application.  Pewlett Hackard employs 300,024 employees with 90,398 approaching retirement age. This is commonly referred to as the ‘Silver Tsunami’ as more than 30% of the total employee will reach retirement age. 

Summary of analysis: 
- Total employees:  300,024
- Retire employees: 90,398 
- Percent of total employees eligible to retire: 30.1%
- Mentorship Eligible: 1549

## Summary
In order to maintain current staffing levels, 90,398 positions will need to be filled. The role with the greatest need will be Senior Engineers with an anticipated 29,414 openings. The role with the least need with be managers with only 2 Managers who qualify for retirement. 

Pewlett Hackard is considering a mentorship program to offer an opportunity to some employees to work part-time as mentors to younger employees. Based on the established criteria, there will be 1549 employees who qualify for the mentorship program.

Below is a comparison by title of the number of retirees vs number of eligible mentors.