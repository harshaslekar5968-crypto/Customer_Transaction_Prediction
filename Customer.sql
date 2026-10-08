-- Customer Data Analysis

-- Customer Data
SELECT
* 
FROM
customer;

--  2.	Which gender did we sell more products to?
SELECT 
gender, count(*) as'Transaction', sum(quantity) as 'Units', sum(price*quantity) as 'Revenue'
FROM
customer
group by gender;

-- 3.	Which gender generated more revenue?
SELECT
category, gender, sum(quantity) as 'Total Units', sum(price*quantity) as 'Revenue'
FROM
customer
group by
category,gender
order by
category;

-- 4.	Distribution of purchase categories relative to other columns?
SELECT
payment_method, count(*) as 'Transaction',
round(100*count(*)/(SELECT count(*) FROM customer),2) as pct
FROM
customer
group by
payment_method;

-- 5.	How is the shopping distribution according to age?
SELECT
age,payment_method , count(*) as 'Transaction'
FROM
customer
group by
1,2;

-- 6.	Which age cat did we sell more products to?
SELECT age,
       SUM(quantity) AS 'units_sold',
       COUNT(*)      AS 'transactions'
FROM customer
GROUP BY age
ORDER BY 'units_sold' DESC;

-- 7.	Which age cat generated more revenue?
SELECT
age, sum(price*quantity) as 'Total Revenue'
FROM
customer
group by
age
order by
'Total Revenue'
desc
limit 1;

-- 8.	Distribution of purchase categories relative to other columns?
SELECT
category, count(*) as 'Total Units', sum(price*quantity) as 'Total Revenue'
FROM
customer
group by
category
order by
category;

-- 9.	Does the payment method have a relation with other columns?
SELECT
payment_method, category, sum(price*quantity) as 'Total Revenue'
FROM
customer
group by
payment_method, category;

-- 10.	How is the distribution of the payment method?
SELECT
payment_method, count(*) as 'Total Units',sum(quantity*price) as 'Total Revenue'
FROM
customer
group by 
payment_method; 