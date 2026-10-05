USE IT_Job_Market_DB;

SELECT TOP 10 Company_Name, 
       COUNT(*) AS Openings_Count
FROM it_jobs_main
GROUP BY Company_Name
ORDER BY Openings_Count DESC;