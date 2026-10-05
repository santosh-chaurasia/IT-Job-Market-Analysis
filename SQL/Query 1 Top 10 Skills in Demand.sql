USE IT_Job_Market_DB;

---- Let's verify our total counts
--SELECT COUNT(*) AS total_jobs FROM it_jobs_main;
--SELECT COUNT(*) AS total_skills FROM job_skills_normalized;


SELECT TOP 10 Skill, COUNT(*) AS Demand_Count
FROM job_skills_normalized
GROUP BY Skill
ORDER BY Demand_Count DESC;