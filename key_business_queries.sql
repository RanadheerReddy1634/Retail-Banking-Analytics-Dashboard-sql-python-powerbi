create database banking_case;
use banking_case;

show tables;
select * from banking_case.banking; 

-- 1. Number of clients + average age + average income by Nationality
SELECT 
    Nationality,
    COUNT(*) AS client_count,
    ROUND(AVG(Age), 1) AS avg_age,
    ROUND(AVG(`Estimated Income`), 0) AS avg_estimated_income,
    ROUND(SUM(`Bank Deposits`) / 1000000, 1) AS total_deposits_million
FROM banking
GROUP BY Nationality
ORDER BY client_count DESC;

-- 2. Loyalty Classification distribution + financial summary
SELECT 
    `Loyalty Classification`,
    COUNT(*) AS client_count,
    ROUND(AVG(`Estimated Income`), 0) AS avg_income,
    ROUND(AVG(`Bank Loans`), 0) AS avg_loan,
    ROUND(AVG(`Bank Deposits`), 0) AS avg_deposit,
    ROUND(SUM(`Bank Loans`) / 1000000, 1) AS total_loans_million
FROM banking
GROUP BY `Loyalty Classification`
ORDER BY client_count DESC;
 
 
-- 3. Credit card usage summary
SELECT 
    `Amount of Credit Cards`,
    COUNT(*) AS client_count,
    ROUND(AVG(`Credit Card Balance`), 0) AS avg_cc_balance,
    ROUND(SUM(`Credit Card Balance`) / 1000000, 2) AS total_cc_balance_million,
    ROUND(AVG(`Bank Loans`), 0) AS avg_loan_for_this_group
FROM banking
GROUP BY `Amount of Credit Cards`
ORDER BY `Amount of Credit Cards`;

-- 4. Top 10 occupations by total loan amount
SELECT 
    Occupation,
    COUNT(*) AS client_count,
    ROUND(SUM(`Bank Loans`) / 1000000, 1) AS total_loans_million,
    ROUND(AVG(`Bank Loans`), 0) AS avg_loan,
    ROUND(AVG(`Estimated Income`), 0) AS avg_income
FROM banking
GROUP BY Occupation
ORDER BY total_loans_million DESC
LIMIT 10;

-- 5. Clients joined by year + average deposit & loan
SELECT 
    YEAR(`Joined Bank`) AS join_year,
    COUNT(*) AS clients_joined,
    ROUND(AVG(`Bank Deposits`), 0) AS avg_current_deposit,
    ROUND(AVG(`Bank Loans`), 0) AS avg_current_loan,
    ROUND(SUM(`Bank Deposits`) / 1000000, 1) AS total_deposits_million
FROM banking
GROUP BY join_year
ORDER BY join_year;