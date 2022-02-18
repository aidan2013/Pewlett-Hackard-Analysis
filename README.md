# Pewlett-Hackard-Analysis

## Overview: 

The purpose of this analysis is to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. This analysis will help prepare Bobby’s manager for the “silver tsunami” as a large number of employees get closer to retirement.

## Results: 

- In starting this analysis, we are provided with 6 different csv files that contain different datasets. By creating an entitiy relationship diagram, it highlights the relationship these different tables have to eachother and how they can all be connected.
 
![EmployeeDB](https://user-images.githubusercontent.com/91445591/154612722-d789faeb-e4f0-48c4-86d5-3e27ba51d32f.png)

- By joining the Employees and Titles tables on the primary key and filtering the employees that were born between 1952 and 1955. We find that 133,776 employees fall under this retirement criteria however this includes employees that have already left the company. 

 ![image](https://user-images.githubusercontent.com/91445591/154614284-2825b355-6d98-46f9-98da-b84460162978.png)

- In order to exclude the employees that have already left the company and any duplicates, the DISTINCT ON statement is used on the employee number and only the employees that have a 'to_date' of '999-01-01' are retained. Once this table is created, the titles can be grouped together and a new table created in order to see how many positions are projected to retire within each title.

![image](https://user-images.githubusercontent.com/91445591/154616517-e10dcdaf-9ca8-4368-8d5d-6a0de6425c38.png)

- Lastly, by using the ERD created in the module, a new table can be created to hold the employees that were born between in 1965 and are eligible for mentorship.

## Summary: 

Provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
Creating a table to see who is does not fall within the mentorship eligibility can provide more insight in order to see how many employees will be retiring in comparison to how many would remain. 

![image](https://user-images.githubusercontent.com/91445591/154626192-75aba4ae-0dad-426b-b46f-e403f04a33c3.png)

Based on the data brought in by the mentorship_eligibility table, we can see that an estimated 1,549 employees will soon be eligibile for retirement and create open roles needing to be filled as the "silver tsunami" makes impact. There are an estimated 91,826 employees that are outside of the eligibility parameters for retirement. 

![image](https://user-images.githubusercontent.com/91445591/154627618-4ae65ed5-c359-4deb-87c5-1bc42097b69c.png)

To dig a little deeper, we can create a table counting the number of employees within each title that are ineligbile for retirement.
By comparing this table against the retirement_titles table, is will provide more insight as to whether there are enough retirement ready employees to mentor the next generation of employees. 

### percentage eligible for retirement
- Senior Engineer 47.45%
- Engineer 20.93%
- Assistant Engineer 19.14%
- Senior Staff 47.19%
- Staff 18.71%
- Manager 33.33%
- Technique Leader 43.74

In comparing these two tables, it is prevalent that Pewlett-Hackard will not be able to replace the "silver tsunami" simply with internal applicants. Almost half of their senior staff and senior engineers will be eligible for retirement.  
