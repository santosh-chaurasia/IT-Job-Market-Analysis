USE IT_Job_Market_DB;

-- Finding average salary for Data Analysts across different cities

SELECT Location, 
       COUNT(*) AS Total_Openings, 
       AVG(Salary_INR) AS Average_Salary_INR
FROM it_jobs_main
WHERE Job_Title = 'Data Analyst'
GROUP BY Location
ORDER BY Average_Salary_INR DESC;