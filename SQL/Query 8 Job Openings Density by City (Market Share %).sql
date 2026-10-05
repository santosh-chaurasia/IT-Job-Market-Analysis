USE IT_Job_Market_DB;

SELECT Location, 
       COUNT(*) AS Total_Jobs,
       ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM it_jobs_main), 2) AS Market_Share_Percent
FROM it_jobs_main
GROUP BY Location
ORDER BY Total_Jobs DESC;