# Total number of customers who have taken loans:
SELECT COUNT(*) AS total_loan_customers FROM banks WHERE loan = 'yes';

# Total number of customers who have not taken loans:
SELECT COUNT(*) AS total_no_loan_customers FROM banks WHERE loan = 'no';

# Percentage of customers who have taken loans:
SELECT CONCAT(ROUND((COUNT(*) / (SELECT COUNT(*) FROM banks)) * 100, 2), '%') AS loan_percentage FROM banks WHERE loan = 'yes';

# Percentage of customers who have not taken loans:
SELECT CONCAT(ROUND((COUNT(*) / (SELECT COUNT(*) FROM banks)) * 100, 2), '%') AS no_loan_percentage FROM banks WHERE loan = 'no';

# Average duration of the loans:
SELECT AVG(duration) AS avg_loan_duration FROM banks WHERE loan = 'yes';

#Maximum and minimum duration of the loans:
SELECT MAX(duration) AS max_loan_duration, MIN(duration) AS min_loan_duration FROM banks WHERE loan = 'yes';

#Average campaign for customers who have taken loans:
SELECT AVG(campaign) AS avg_loan_campaign FROM banks WHERE loan = 'yes';

#Maximum and minimum campaign for customers who have taken loans:
SELECT MAX(campaign) AS max_loan_campaign, MIN(campaign) AS min_loan_campaign FROM banks WHERE loan = 'yes';