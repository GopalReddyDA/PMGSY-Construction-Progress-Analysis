# Construction Progress Analysis using SQL Server

## Project Overview

This project analyzes road construction progress across different states in India using **SQL Server**.

The analysis focuses on planned roads, completed roads, remaining roads, project costs, and expenditure to understand construction performance.

## Dataset

* **32 states/regions**
* Road construction and financial information
* Source format: CSV

### Key Columns

* `State`
* `NS_Roads`
* `NS_Road_Length_Km`
* `Completed_Roads`
* `Completed_Road_Length_Km`
* `Balance_Roads`
* `Balance_Road_Length_Km`
* `Sanctioned_Cost_Cr`
* `Actual_Cost_Cr`
* `Expenditure_Cr`

## Tools

* SQL Server
* SQL
* CSV

## Business Questions

1. Which state has the highest number of NS_Roads (sanctioned roads)?
2. What is the total sanctioned road length?
3. Which states have completed more than 1,000 roads?
4. What is the road completion percentage for each state?
5. Which state has the highest completion percentage?
6. Which states have cost overruns?
7. What is the expenditure utilization percentage for each state?
8. Which states have the highest number of remaining roads?
9. Find the top 5 states by expenditure.
10. Which states have low road completion but high expenditure?

## Key KPIs

**Road Completion %**

```text
Completed Roads / Sanctioned Roads × 100
```

**Cost Overrun**

```text
Actual Cost - Sanctioned Cost
```

**Expenditure Utilization %**

```text
Expenditure / Sanctioned Cost × 100
```

## Key Insights
* Most states have completed a high percentage of their sanctioned roads.
* Some states still have a large number of roads remaining, which shows where more work is needed.
* Bihar has the highest expenditure among the states.
* Some states have actual costs higher than the sanctioned costs, indicating cost overruns.
* A high amount of expenditure does not always mean high construction completion.
* Comparing completion percentage and expenditure together helps identify states that may need further investigation.
* The analysis helps understand construction progress, pending work, spending, and cost performance using SQL Server.
