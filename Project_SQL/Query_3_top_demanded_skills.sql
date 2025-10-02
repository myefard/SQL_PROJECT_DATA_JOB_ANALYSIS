--what are the most in demand skills for my rolle (data analyst)?

SELECT 
    s.skills,
    COUNT(*) AS demand_count
FROM job_postings_fact j
JOIN skills_job_dim sjd 
    ON j.job_id = sjd.job_id
JOIN skills_dim s 
    ON sjd.skill_id = s.skill_id
WHERE j.job_title ILIKE '%Data Analyst%'
GROUP BY s.skills
ORDER BY demand_count DESC
LIMIT 20;
