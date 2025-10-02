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
--remote What are the top paying jobs for a Data Analyst which are available remotely?
SELECT 
    j.job_id,
    j.job_title,
    j.job_location,
    c.name AS company_name,
    j.salary_year_avg
FROM job_postings_fact j
JOIN company_dim c 
    ON j.company_id = c.company_id
WHERE j.job_title ILIKE '%Data Analyst%'
  AND j.salary_year_avg IS NOT NULL
  AND j.job_work_from_home = TRUE
ORDER BY j.salary_year_avg DESC
LIMIT 10;
-- job title short used :

SELECT 
    j.job_id,
    j.job_title_short,
    j.job_location,
    c.name AS company_name,
    j.salary_year_avg
FROM job_postings_fact j
JOIN company_dim c 
    ON j.company_id = c.company_id
WHERE j.job_title_short ILIKE '%Data Analyst%'
  AND j.salary_year_avg IS NOT NULL
  AND j.job_work_from_home = TRUE
ORDER BY j.salary_year_avg DESC
LIMIT 10;




--what are the skills that are requiered for these top paying roles?
WITH top_remote_jobs AS (
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
    WHERE j.job_title_short ILIKE '%Data Analyst%'
      AND j.job_work_from_home = TRUE
      AND j.salary_year_avg IS NOT NULL
    ORDER BY j.salary_year_avg DESC
    LIMIT 10
)
SELECT 
    tj.job_id,
    tj.job_title,
    tj.job_title_short,
    tj.company_name,
    tj.salary_year_avg,
    s.skills
FROM top_remote_jobs tj
JOIN skills_job_dim sjd 
    ON tj.job_id = sjd.job_id
JOIN skills_dim s 
    ON sjd.skill_id = s.skill_id
ORDER BY tj.salary_year_avg DESC, tj.job_id, s.skills;


--for top skilles, top questio luke code as this:
WITH top_paying_jobs AS (
    SELECT
        job_id, job_title, salary_year_avg,
        name AS company_name
    FROM job_postings_fact
    LEFT JOIN company_dim 
        ON job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title_short = 'Data Analyst' 
        AND job_location = 'Anywhere' 
        AND salary_hour_avg IS NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 10
)
SELECT 
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim 
    ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim 
    ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY salary_year_avg DESC;



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
--what are the top skills based on salary for my role?
SELECT 
    s.skills,
    ROUND(AVG(j.salary_year_avg), 0) AS avg_salary
FROM job_postings_fact j
JOIN skills_job_dim sjd 
    ON j.job_id = sjd.job_id
JOIN skills_dim s 
    ON sjd.skill_id = s.skill_id
WHERE j.job_title ILIKE '%Data Analyst%'
  AND j.salary_year_avg IS NOT NULL
GROUP BY s.skills
ORDER BY avg_salary DESC
LIMIT 20;
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


