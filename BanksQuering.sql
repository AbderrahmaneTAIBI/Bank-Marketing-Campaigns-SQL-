# Show the 1000 first rows of our table
SELECT *
FROM banks
LIMIT 1000;

# The count of all instances
SELECT COUNT(*)
FROM banks;

# To filter the data based on specific conditions, for example to only show rows where the client has defaulted:
SELECT *
FROM banks
WHERE 'default' = 'yes';

#Calculate the average duration of calls grouped by month:
SELECT month, AVG(duration)
FROM banks
GROUP BY month;

# Which demographic groups are more likely to subscribe to the term deposit?
SELECT job, marital, AVG(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS subscription_rate
FROM banks
GROUP BY job, marital
ORDER BY subscription_rate DESC;


# How do different marketing channels (e.g., email, phone, social media) perform in terms of conversion rate?
SELECT contact, COUNT(*) as total, SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) as converted, 
       CAST(SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) as conversion_rate
FROM banks
GROUP BY contact;

# Investigate the impact of different variables on the subscription rate
SELECT job, education, COUNT(*) AS total, SUM(y='yes') AS subscribed, SUM(y='yes')/COUNT(*) AS conversion_rate
FROM banks
GROUP BY job, education
ORDER BY conversion_rate DESC;