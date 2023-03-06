# Measures of central tendency
## Mean age
SELECT AVG(age) FROM banks;

## Mode job
SELECT job, COUNT(*) as frequency
FROM banks
GROUP BY job
ORDER BY frequency DESC
LIMIT 1;


# Measures of variability
## Range of age
SELECT MAX(age) - MIN(age) AS age_range FROM banks;

## Standard deviation of campaign: This can be calculated using the STDDEV function in SQL:
SELECT STDDEV(campaign) FROM banks;

## Variance of euribor3m: This can be calculated using the VARIANCE function in SQL:
SELECT VARIANCE(euribor3m) FROM banks;