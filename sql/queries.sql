/*
Electricity Consumption Analysis SQL Queries
Database: Bareilly_2021
*/

-- Create Database
CREATE DATABASE IF NOT EXISTS electricity_analysis;
USE electricity_analysis;


-- TABLE CREATION
DROP TABLE IF EXISTS electricity_usage;

CREATE TABLE electricity_usage (
id INT AUTO_INCREMENT PRIMARY KEY,
user_id VARCHAR(50) NOT NULL,
region VARCHAR(50),
consumption FLOAT,
datetime DATETIME
);

-- Iport Dataset
LOAD DATA INFILE '../data/Bareilly_2021.csv'
INTO TABLE electricity_usage
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(user_id, region, consumption, datetime);

-- Add derived columns
ALTER TABLE electricity_usage
ADD COLUMN hour INT,
ADD COLUMN month INT;

-- Populate derived columns
UPDATE electricity_usage
SET
hour = HOUR(datetime),
month = MONTH(datetime);


-- SQL Queries for Analysis

-- 1 Total Consumption per Region
SELECT region, SUM(consumption) AS total_consumption
FROM electricity_usage
GROUP BY region
ORDER BY total_consumption DESC;


-- 2 Top 5 High Usage areas
SELECT region, SUM(consumption) AS total_usage
FROM electricity_usage
GROUP BY region
ORDER BY total_usage DESC
LIMIT 5;


-- 3 Moving Average of Consumption Trend
SELECT month, SUM(consumption) AS total_consumption
FROM electricity_usage
GROUP BY month
ORDER BY month;


-- 4 Frequent Users (Activity Count)
SELECT user_id, COUNT(*) AS activity_count
FROM electricity_usage
GROUP BY user_id
ORDER BY activity_count DESC;


-- 5 Average Consumption per User
SELECT user_id, AVG(consumption) AS avg_consumption
FROM electricity_usage
GROUP BY user_id
ORDER BY avg_consumption DESC;


-- 6 Peak Usage Time (Hour-wise)
SELECT hour, SUM(consumption) AS total_usage
FROM electricity_usage
GROUP BY hour
ORDER BY total_usage DESC;


-- 7 Rank Regions by Consumption
SELECT region, SUM(consumption) AS total_usage,
RANK() OVER (ORDER BY SUM(consumption) DESC) AS rank_position
FROM electricity_usage
GROUP BY region;

