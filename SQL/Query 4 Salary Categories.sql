USE IT_Job_Market_DB;

-- Segment jobs into annual salary tiers (LPA)
SELECT 
    CASE 
        WHEN Salary_INR < 600000 THEN 'Tier 3: Entry Pay (< 6 LPA)'
        WHEN Salary_INR BETWEEN 600000 AND 1200000 THEN 'Tier 2: Mid Pay (6 - 12 LPA)'
        ELSE 'Tier 1: High Pay (> 12 LPA)'
    END AS Salary_Tier,
    COUNT(*) AS Total_Jobs,
    ROUND(AVG(CAST(Salary_INR AS BIGINT)), 0) AS Exact_Average_Salary
FROM it_jobs_main
GROUP BY 
    CASE 
        WHEN Salary_INR < 600000 THEN 'Tier 3: Entry Pay (< 6 LPA)'
        WHEN Salary_INR BETWEEN 600000 AND 1200000 THEN 'Tier 2: Mid Pay (6 - 12 LPA)'
        ELSE 'Tier 1: High Pay (> 12 LPA)'
    END
ORDER BY Total_Jobs DESC;