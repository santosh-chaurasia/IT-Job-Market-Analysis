USE IT_Job_Market_DB;

SELECT TOP 5 s.Skill, COUNT(*) AS Skill_Count
FROM it_jobs_main j
JOIN job_skills_normalized s ON j.Job_ID = s.Job_ID
WHERE j.Job_Title = 'Python Developer'
GROUP BY s.Skill
ORDER BY Skill_Count DESC;