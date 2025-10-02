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




	
0	
job_id	552322
job_title	"Associate Director- Data Insights"
job_title_short	"Data Analyst"
company_name	"AT&T"
salary_year_avg	"255829.5"
skills	"aws"
1	
job_id	552322
job_title	"Associate Director- Data Insights"
job_title_short	"Data Analyst"
company_name	"AT&T"
salary_year_avg	"255829.5"
skills	"azure"
2	
job_id	552322
job_title	"Associate Director- Data Insights"
job_title_short	"Data Analyst"
company_name	"AT&T"
salary_year_avg	"255829.5"
skills	"databricks"
3	
job_id	552322
job_title	"Associate Director- Data Insights"
job_title_short	"Data Analyst"
company_name	"AT&T"
salary_year_avg	"255829.5"
skills	"excel"
4	
job_id	552322
job_title	"Associate Director- Data Insights"
job_title_short	"Data Analyst"
company_name	"AT&T"
salary_year_avg	"255829.5"
skills	"jupyter"
5	
job_id	552322
job_title	"Associate Director- Data Insights"
job_title_short	"Data Analyst"
company_name	"AT&T"
salary_year_avg	"255829.5"
skills	"pandas"
6	
job_id	552322
job_title	"Associate Director- Data Insights"
job_title_short	"Data Analyst"
company_name	"AT&T"
salary_year_avg	"255829.5"
skills	"power bi"
7	
job_id	552322
job_title	"Associate Director- Data Insights"
job_title_short	"Data Analyst"
company_name	"AT&T"
salary_year_avg	"255829.5"
skills	"powerpoint"
8	
job_id	552322
job_title	"Associate Director- Data Insights"
job_title_short	"Data Analyst"
company_name	"AT&T"
salary_year_avg	"255829.5"
skills	"pyspark"
9	
job_id	552322
job_title	"Associate Director- Data Insights"
job_title_short	"Data Analyst"
company_name	"AT&T"
salary_year_avg	"255829.5"
skills	"python"
10	
job_id	552322
job_title	"Associate Director- Data Insights"
job_title_short	"Data Analyst"
company_name	"AT&T"
salary_year_avg	"255829.5"
skills	"r"
11	
job_id	552322
job_title	"Associate Director- Data Insights"
job_title_short	"Data Analyst"
company_name	"AT&T"
salary_year_avg	"255829.5"
skills	"sql"
12	
job_id	552322
job_title	"Associate Director- Data Insights"
job_title_short	"Data Analyst"
company_name	"AT&T"
salary_year_avg	"255829.5"
skills	"tableau"
13	
job_id	99305
job_title	"Data Analyst, Marketing"
job_title_short	"Data Analyst"
company_name	"Pinterest Job Advertisements"
salary_year_avg	"232423.0"
skills	"hadoop"
14	
job_id	99305
job_title	"Data Analyst, Marketing"
job_title_short	"Data Analyst"
company_name	"Pinterest Job Advertisements"
salary_year_avg	"232423.0"
skills	"python"
15	
job_id	99305
job_title	"Data Analyst, Marketing"
job_title_short	"Data Analyst"
company_name	"Pinterest Job Advertisements"
salary_year_avg	"232423.0"
skills	"r"
16	
job_id	99305
job_title	"Data Analyst, Marketing"
job_title_short	"Data Analyst"
company_name	"Pinterest Job Advertisements"
salary_year_avg	"232423.0"
skills	"sql"
17	
job_id	99305
job_title	"Data Analyst, Marketing"
job_title_short	"Data Analyst"
company_name	"Pinterest Job Advertisements"
salary_year_avg	"232423.0"
skills	"tableau"
18	
job_id	1021647
job_title	"Data Analyst (Hybrid/Remote)"
job_title_short	"Data Analyst"
company_name	"Uclahealthcareers"
salary_year_avg	"217000.0"
skills	"crystal"
19	
job_id	1021647
job_title	"Data Analyst (Hybrid/Remote)"
job_title_short	"Data Analyst"
company_name	"Uclahealthcareers"
salary_year_avg	"217000.0"
skills	"flow"
20	
job_id	1021647
job_title	"Data Analyst (Hybrid/Remote)"
job_title_short	"Data Analyst"
company_name	"Uclahealthcareers"
salary_year_avg	"217000.0"
skills	"oracle"
21	
job_id	1021647
job_title	"Data Analyst (Hybrid/Remote)"
job_title_short	"Data Analyst"
company_name	"Uclahealthcareers"
salary_year_avg	"217000.0"
skills	"sql"
22	
job_id	1021647
job_title	"Data Analyst (Hybrid/Remote)"
job_title_short	"Data Analyst"
company_name	"Uclahealthcareers"
salary_year_avg	"217000.0"
skills	"tableau"
23	
job_id	168310
job_title	"Principal Data Analyst (Remote)"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"205000.0"
skills	"excel"
24	
job_id	168310
job_title	"Principal Data Analyst (Remote)"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"205000.0"
skills	"gitlab"
25	
job_id	168310
job_title	"Principal Data Analyst (Remote)"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"205000.0"
skills	"go"
26	
job_id	168310
job_title	"Principal Data Analyst (Remote)"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"205000.0"
skills	"numpy"
27	
job_id	168310
job_title	"Principal Data Analyst (Remote)"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"205000.0"
skills	"pandas"
28	
job_id	168310
job_title	"Principal Data Analyst (Remote)"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"205000.0"
skills	"python"
29	
job_id	168310
job_title	"Principal Data Analyst (Remote)"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"205000.0"
skills	"snowflake"
30	
job_id	168310
job_title	"Principal Data Analyst (Remote)"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"205000.0"
skills	"sql"
31	
job_id	168310
job_title	"Principal Data Analyst (Remote)"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"205000.0"
skills	"tableau"
32	
job_id	731368
job_title	"Director, Data Analyst - HYBRID"
job_title_short	"Data Analyst"
company_name	"Inclusively"
salary_year_avg	"189309.0"
skills	"atlassian"
33	
job_id	731368
job_title	"Director, Data Analyst - HYBRID"
job_title_short	"Data Analyst"
company_name	"Inclusively"
salary_year_avg	"189309.0"
skills	"aws"
34	
job_id	731368
job_title	"Director, Data Analyst - HYBRID"
job_title_short	"Data Analyst"
company_name	"Inclusively"
salary_year_avg	"189309.0"
skills	"azure"
35	
job_id	731368
job_title	"Director, Data Analyst - HYBRID"
job_title_short	"Data Analyst"
company_name	"Inclusively"
salary_year_avg	"189309.0"
skills	"bitbucket"
36	
job_id	731368
job_title	"Director, Data Analyst - HYBRID"
job_title_short	"Data Analyst"
company_name	"Inclusively"
salary_year_avg	"189309.0"
skills	"confluence"
37	
job_id	731368
job_title	"Director, Data Analyst - HYBRID"
job_title_short	"Data Analyst"
company_name	"Inclusively"
salary_year_avg	"189309.0"
skills	"jenkins"
38	
job_id	731368
job_title	"Director, Data Analyst - HYBRID"
job_title_short	"Data Analyst"
company_name	"Inclusively"
salary_year_avg	"189309.0"
skills	"jira"
39	
job_id	731368
job_title	"Director, Data Analyst - HYBRID"
job_title_short	"Data Analyst"
company_name	"Inclusively"
salary_year_avg	"189309.0"
skills	"oracle"
40	
job_id	731368
job_title	"Director, Data Analyst - HYBRID"
job_title_short	"Data Analyst"
company_name	"Inclusively"
salary_year_avg	"189309.0"
skills	"power bi"
41	
job_id	731368
job_title	"Director, Data Analyst - HYBRID"
job_title_short	"Data Analyst"
company_name	"Inclusively"
salary_year_avg	"189309.0"
skills	"python"
42	
job_id	731368
job_title	"Director, Data Analyst - HYBRID"
job_title_short	"Data Analyst"
company_name	"Inclusively"
salary_year_avg	"189309.0"
skills	"sap"
43	
job_id	731368
job_title	"Director, Data Analyst - HYBRID"
job_title_short	"Data Analyst"
company_name	"Inclusively"
salary_year_avg	"189309.0"
skills	"snowflake"
44	
job_id	731368
job_title	"Director, Data Analyst - HYBRID"
job_title_short	"Data Analyst"
company_name	"Inclusively"
salary_year_avg	"189309.0"
skills	"sql"
45	
job_id	731368
job_title	"Director, Data Analyst - HYBRID"
job_title_short	"Data Analyst"
company_name	"Inclusively"
salary_year_avg	"189309.0"
skills	"tableau"
46	
job_id	310660
job_title	"Principal Data Analyst, AV Performance Analysis"
job_title_short	"Data Analyst"
company_name	"Motional"
salary_year_avg	"189000.0"
skills	"atlassian"
47	
job_id	310660
job_title	"Principal Data Analyst, AV Performance Analysis"
job_title_short	"Data Analyst"
company_name	"Motional"
salary_year_avg	"189000.0"
skills	"bitbucket"
48	
job_id	310660
job_title	"Principal Data Analyst, AV Performance Analysis"
job_title_short	"Data Analyst"
company_name	"Motional"
salary_year_avg	"189000.0"
skills	"confluence"
49	
job_id	310660
job_title	"Principal Data Analyst, AV Performance Analysis"
job_title_short	"Data Analyst"
company_name	"Motional"
salary_year_avg	"189000.0"
skills	"git"
50	
job_id	310660
job_title	"Principal Data Analyst, AV Performance Analysis"
job_title_short	"Data Analyst"
company_name	"Motional"
salary_year_avg	"189000.0"
skills	"jira"
51	
job_id	310660
job_title	"Principal Data Analyst, AV Performance Analysis"
job_title_short	"Data Analyst"
company_name	"Motional"
salary_year_avg	"189000.0"
skills	"python"
52	
job_id	310660
job_title	"Principal Data Analyst, AV Performance Analysis"
job_title_short	"Data Analyst"
company_name	"Motional"
salary_year_avg	"189000.0"
skills	"r"
53	
job_id	310660
job_title	"Principal Data Analyst, AV Performance Analysis"
job_title_short	"Data Analyst"
company_name	"Motional"
salary_year_avg	"189000.0"
skills	"sql"
54	
job_id	1749593
job_title	"Principal Data Analyst"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"186000.0"
skills	"excel"
55	
job_id	1749593
job_title	"Principal Data Analyst"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"186000.0"
skills	"gitlab"
56	
job_id	1749593
job_title	"Principal Data Analyst"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"186000.0"
skills	"go"
57	
job_id	1749593
job_title	"Principal Data Analyst"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"186000.0"
skills	"numpy"
58	
job_id	1749593
job_title	"Principal Data Analyst"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"186000.0"
skills	"pandas"
59	
job_id	1749593
job_title	"Principal Data Analyst"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"186000.0"
skills	"python"
60	
job_id	1749593
job_title	"Principal Data Analyst"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"186000.0"
skills	"snowflake"
61	
job_id	1749593
job_title	"Principal Data Analyst"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"186000.0"
skills	"sql"
62	
job_id	1749593
job_title	"Principal Data Analyst"
job_title_short	"Data Analyst"
company_name	"SmartAsset"
salary_year_avg	"186000.0"
skills	"tableau"
63	
job_id	1638595
job_title	"Senior Data Analyst"
job_title_short	"Senior Data Analyst"
company_name	"Patterned Learning AI"
salary_year_avg	"185000.0"
skills	"angular"
64	
job_id	1638595
job_title	"Senior Data Analyst"
job_title_short	"Senior Data Analyst"
company_name	"Patterned Learning AI"
salary_year_avg	"185000.0"
skills	"aws"
65	
job_id	1638595
job_title	"Senior Data Analyst"
job_title_short	"Senior Data Analyst"
company_name	"Patterned Learning AI"
salary_year_avg	"185000.0"
skills	"css"
66	
job_id	1638595
job_title	"Senior Data Analyst"
job_title_short	"Senior Data Analyst"
company_name	"Patterned Learning AI"
salary_year_avg	"185000.0"
skills	"fastapi"
67	
job_id	1638595
job_title	"Senior Data Analyst"
job_title_short	"Senior Data Analyst"
company_name	"Patterned Learning AI"
salary_year_avg	"185000.0"
skills	"flask"
68	
job_id	1638595
job_title	"Senior Data Analyst"
job_title_short	"Senior Data Analyst"
company_name	"Patterned Learning AI"
salary_year_avg	"185000.0"
skills	"html"
69	
job_id	1638595
job_title	"Senior Data Analyst"
job_title_short	"Senior Data Analyst"
company_name	"Patterned Learning AI"
salary_year_avg	"185000.0"
skills	"keras"
70	
job_id	1638595
job_title	"Senior Data Analyst"
job_title_short	"Senior Data Analyst"
company_name	"Patterned Learning AI"
salary_year_avg	"185000.0"
skills	"python"
71	
job_id	1638595
job_title	"Senior Data Analyst"
job_title_short	"Senior Data Analyst"
company_name	"Patterned Learning AI"
salary_year_avg	"185000.0"
skills	"sql"
72	
job_id	1638595
job_title	"Senior Data Analyst"
job_title_short	"Senior Data Analyst"
company_name	"Patterned Learning AI"
salary_year_avg	"185000.0"
skills	"windows"