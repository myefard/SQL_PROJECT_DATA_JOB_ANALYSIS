--what are the most optimal skills to learn for my role, i mean high demand and high paying?
SELECT 
    s.skills,
    COUNT(*) AS demand_count,
    ROUND(AVG(j.salary_year_avg), 0) AS avg_salary
FROM job_postings_fact j
JOIN skills_job_dim sjd 
    ON j.job_id = sjd.job_id
JOIN skills_dim s 
    ON sjd.skill_id = s.skill_id
WHERE j.job_title ILIKE '%Data Analyst%'
  AND j.salary_year_avg IS NOT NULL
GROUP BY s.skills
ORDER BY demand_count DESC, avg_salary DESC
LIMIT 20;