select *
from Construction_Progress ;

-- Q1.Which state has the highest number of NS_Roads (sanctioned roads)?

select 
	top 1 
	state,
	ns_roads
from Construction_Progress
order by ns_roads desc 

-- Q2. What is the total sanctioned road length

select 
	sum(NS_Road_Length_Km)as total_ns_road_len
from Construction_Progress

-- Q3. Which states have completed more than 1,000 roads?

select 
	state ,
	Completed_Roads
from Construction_Progress
where Completed_Roads > 1000
order by  Completed_Roads desc 


-- Q4. What is the road completion percentage for each state?
SELECT
    State,
    NS_Roads,
    Completed_Roads,
        round((Completed_Roads*100/NS_Roads ),2)as completion_percentage
FROM Construction_Progress
ORDER BY Completion_Percentage DESC;

-- Q5 Which state has the highest completion percentage? 
select top 1
	state ,
	NS_Roads,
	Completed_Roads,
	round((Completed_Roads*100/NS_Roads ),2)as completion_percentage
from Construction_Progress
order by completion_percentage desc 

-- Q6. Which states have cost over runs?
select 
	state,
	Sanctioned_Cost_Cr,
	Actual_Cost_Cr,
	Actual_Cost_Cr -Sanctioned_Cost_Cr as Over_cost_runs
from Construction_Progress
where  Actual_Cost_Cr > Sanctioned_Cost_Cr 
order by Over_cost_runs desc

-- Q7. What is the expenditure utilization percentage?

select 
	state ,
	Sanctioned_Cost_Cr,
	Expenditure_Cr,
	round(Expenditure_Cr*100/Sanctioned_Cost_Cr,2) as utilization_percentage
from Construction_Progress
order by utilization_percentage

-- Q8 Which states have the highest number of remaining roads?

SELECT 
    state,
    SUM(remaining_roads) AS total_remaining_roads
FROM Construction_Progress
GROUP BY state
ORDER BY total_remaining_roads DESC;


-- Q9 .Find the top 5 states by expenditure
SELECT TOP 5
    State,
    Expenditure_Cr
FROM Construction_Progress
ORDER BY Expenditure_Cr DESC;

-- Q10. Which states have low completion but high expenditure?
SELECT
    State,
    Completed_Roads,
    NS_Roads,
    Expenditure_Cr,
    ROUND(
        Completed_Roads * 100.0 / NS_Roads,
        2
    ) AS Completion_Percentage
FROM Construction_Progress
WHERE
    Completed_Roads * 100.0 / NS_Roads < 70
ORDER BY Expenditure_Cr DESC;
