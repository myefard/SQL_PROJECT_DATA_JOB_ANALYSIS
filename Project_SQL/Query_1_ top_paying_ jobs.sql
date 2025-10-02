-- what are the top paying jobs for a data analyst? 
SELECT 
    j.job_id,
    j.job_title,
    j.job_title_short,
    j.job_location,
    c.name AS company_name,
    j.salary_year_avg
FROM job_postings_fact j
JOIN company_dim c 
    ON j.company_id = c.company_id
WHERE j.job_title ILIKE '%Data Analyst%'
  AND j.salary_year_avg IS NOT NULL
ORDER BY j.salary_year_avg DESC
LIMIT 10;