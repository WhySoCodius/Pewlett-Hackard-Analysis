# Pewlett-Hackard-Analysis

## Overview of the analysis:

Create a Retirement Titles database that contains all the titles of employees who were born between January 1, 1952, and December 31, 1955, using the ERD established in this module as a guide and SQL queries. 

ERD A strong database design must start with an entity-relationship diagram (ERD). In order to create a conceptual architecture for databases, it serves as a high-level logical data model.

![EmployeeDB](/EmployeeDB.png)

## Resources 
### Data Sources: 
6 Different data set were used and interlinked to carry on the Analysis.
- departments.csv, employees.csv, salaries.csv, dept_emp.csv, dept_manager.csv, titles.csv in the [Data folder](/Data).

### Software:

[![macOS](https://svgshare.com/i/ZjP.svg)](https://svgshare.com/i/ZjP.svg)

![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)

![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)


## Results

Looking at a company's personnel records using PostgreSQL allowed us to filter out the number of retiring employees by position. 

The number of employees, broken down by job title, who are of retirement age and were born between January 1, 1952, and December 31, 1955, is shown in the table below.

![retiring_titles](/Resources/retiring_titles.png)

- A total of 72,456 born between January 1, 1952, and December 31, 1955 are eligible for retirement 
- "Senior Engineer" is the title with the most eligible retiree
- Of the Total [9 Managers](/Resources/Current_Managers.png) below 2 Managers are retiring

![Retiring_managers](/Resources/Retiring_managers.png)

-  1,940 of the total Retiring Managers are eligible for Mentorship Program

![retiree_mentor](/Resources/retiree_mentor.png)

- Total 213 are "Senior Engineer" who can be mentor new workforce


## Summary

Pewlett-Hackard will need to train new workers to fill these open roles as the number of retirements starts to have an effect. 72,456 positions will eventually need to be filled in all departments. Even two high-level managment positions must be filled.

One potential solution is to construct a firm mentoring program, which would have qualified, retirement-ready staff train the next generation of Pewlett-Hackard personnel. The positions held by the qualified mentors are broken down in the table below.

![retiree_mentor](/Resources/retiree_mentor.png)
