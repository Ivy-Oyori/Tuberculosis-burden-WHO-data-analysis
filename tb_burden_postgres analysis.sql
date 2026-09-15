SELECT * from tb_burden LIMIT 20;

--confirming the python row entries match the sql entire s
SELECT COUNT(*) FROM tb_burden;

-- Question 1: Trends over time
-- Global average invidence, prevalence and mortality rateby year

SELECT 
  year,
  ROUND(AVG(incidence_rate)::numeric,1) AS avg_incidence_rate,
  ROUND(AVG(prevalence_rate)::numeric,1) AS avg_prevalence_rate,
  ROUND(AVG(mortality_rate)::numeric,1) AS avg_mortality_rate
FROM tb_burden
GROUP BY year
ORDER BY year;

--Question  2 Geographical 
-- which regions carry the highest/lowest TB burden per capita?
--a) Overall average burden by region across all years 1992-2013 

SELECT 
  region,
  ROUND(AVG(incidence_rate)::numeric,1) AS avg_incidence_rate,
  ROUND(AVG(prevalence_rate)::numeric,1) AS avg_prevalence_rate,
  ROUND(AVG(mortality_rate)::numeric,1) AS avg_mortality_rate
FROM tb_burden
GROUP by region
ORDER BY avg_incidence_rate DESC;

--b)Regional burden in the most recent year only (2013), 
which is more relevant for "current" state

SELECT 
  region,
  ROUND(AVG(incidence_rate)::numeric,1) AS avg_incidence_rate,
  ROUND(AVG(prevalence_rate)::numeric,1) AS avg_prevalence_rate,
  ROUND(AVG(mortality_rate)::numeric,1) AS avg_mortality_rate
FROM tb_burden
WHERE year = 2013
GROUP by region
ORDER BY avg_incidence_rate DESC;

--Question 3
-- a) What share of TB incidence is HIV-positive and how does it vary by region

SELECT
  region,
  ROUND(AVG(hiv_in_incident_tb_pct)::numeric,3) AS avg_hiv_share_of_incidence,
  COUNT (DISTINCT country) AS countries_with_estimate
FROM tb_burden
WHERE has_hiv_estimate = true
GROUP BY region
ORDER BY avg_hiv_share_of_incidence DESC;

 --B)How many countries per region have no estimate at all
SELECT
    region,
    COUNT(DISTINCT country) AS countries_missing_hiv_data
FROM tb_burden
WHERE has_hiv_estimate = false
GROUP BY region
ORDER BY countries_missing_hiv_data DESC;

--Query 3c — Have HIV-positive TB deaths fallen at the same pace as HIV-negative TB deaths? 
-- We will compare overtime- time series since the change requires comparing 1990 vs 2013 and not just row numbers 
-- hiv-positive deaths (deaths_hiv) whicle hiv negative deaths are (deaths) are on on very different scales
-- will have  aline chart later.

SELECT
  year,
   ROUND(AVG(mortality_rate)::numeric,2) AS avg_mortality_rate_hiv_neg,
   ROUND(AVG(mortality_rate_hiv)::numeric,2) AS avg_mortality_rate_hiv_pos
FROM tb_burden
WHERE has_hiv_estimate = true
GROUP BY year
ORDER BY year;

--Health performance systems
--Query 4a — How has case detection rate changed over time globally? 
-- me made into a liner graph
SELECT
    year,
	ROUND(AVG(case_detection_rate)::numeric,1) AS avg_case_detection_rate,
	COUNT(*) FILTER (WHERE case_detection_rate IS NOT NULL) AS countries_reporting
FROM tb_burden
GROUP BY year
ORDER BY year;

--Query 4b — Is there a relationship between case detection rate and mortality rate?
-- trying to find a correlation

SELECT
   ROUND(CORR(case_detection_rate, mortality_rate)::numeric,3) AS correlation_detection_mortality
   
FROM tb_burden
WHERE case_detection_rate IS NOT NULL AND mortality_rate IS NOT NULL;

--Query 4c — Break the correlation down by region

SELECT
region,
ROUND(CORR(case_detection_rate, mortality_rate)::numeric, 3) AS correlation_detection_mortality,
COUNT(*) AS n_observations
FROM tb_burden

WHERE case_detection_rate IS NOT NULL AND mortality_rate IS NOT NULL
GROUP BY region
ORDER BY correlation_detection_mortality;
