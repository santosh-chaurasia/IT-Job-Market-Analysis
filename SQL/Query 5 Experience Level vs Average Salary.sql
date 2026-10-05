USE IT_Job_Market_DB;

SELECT Experience_Level,
       COUNT(*) AS Total_Jobs,
       ROUND(AVG(CAST(Salary_INR AS BIGINT)), 0) AS Avg_Salary_INR
FROM it_jobs_main
GROUP BY Experience_Level
ORDER BY Avg_Salary_INR DESC;