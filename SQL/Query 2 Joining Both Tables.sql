USE IT_Job_Market_DB;

-- Finding the top 5 skills specifically for Data Analyst roles

SELECT TOP 5 s.Skill, COUNT(*) AS Skill_Demand
FROM it_jobs_main j
JOIN job_skills_normalized s ON j.Job_ID = s.Job_ID
WHERE j.Job_Title = 'Data Analyst'
GROUP BY s.Skill
ORDER BY Skill_Demand DESC;