create database iphone16;

use iphone16;


-- Create the sales_data table
CREATE TABLE sales_data (
    id INT PRIMARY KEY AUTO_INCREMENT,       -- Unique ID for each record
    Year INT,                                -- Year of sale
    Model VARCHAR(50),                       -- iPhone model
    Region VARCHAR(50),                      -- Region of sale (country)
    Price DECIMAL(10, 2),                    -- Price of the iPhone
    Units_Sold INT,                          -- Number of units sold
    Income_Group VARCHAR(50),                -- Customer income group
    Age_Group VARCHAR(20),                   -- Customer age group
    Launch_Quarter CHAR(2),                  -- Launch quarter (Q1-Q4)
    Marketing_Spend DECIMAL(15, 2),          -- Marketing budget in the region
    Customer_Rating DECIMAL(2, 1),           -- Customer rating (1 to 5 scale)
    Competitor_Price DECIMAL(10, 2),         -- Price of the competitor's closest product
    Price_Elasticity DECIMAL(5, 2),          -- Price elasticity, calculated later
    YoY_Growth DECIMAL(5, 2)                 -- Year-over-year sales growth
);




-- sales_data table
INSERT INTO sales_data (Year, Model, Region, Price, Units_Sold, Income_Group, Age_Group, Launch_Quarter, Marketing_Spend, Customer_Rating, Competitor_Price)
VALUES 
-- 2021 Data
(2021, 'iPhone 12', 'US', 799.00, 1200000, 'High', '25-34', 'Q3', 5000000, 4.5, 750.00),
(2021, 'iPhone 12', 'India', 799.00, 800000, 'Medium', '18-24', 'Q3', 3000000, 4.3, 750.00),
(2021, 'iPhone 12', 'China', 799.00, 1000000, 'High', '25-34', 'Q3', 4500000, 4.4, 750.00),
(2021, 'iPhone 12', 'Germany', 799.00, 900000, 'High', '35-44', 'Q3', 4000000, 4.6, 760.00),
(2021, 'iPhone 12', 'UK', 799.00, 850000, 'High', '25-34', 'Q3', 3500000, 4.2, 755.00),

-- 2022 Data
(2022, 'iPhone 13', 'US', 899.00, 1100000, 'High', '25-34', 'Q3', 5500000, 4.7, 850.00),
(2022, 'iPhone 13', 'India', 899.00, 850000, 'Medium', '18-24', 'Q4', 3200000, 4.2, 850.00),
(2022, 'iPhone 13', 'China', 899.00, 950000, 'High', '25-34', 'Q3', 6000000, 4.6, 850.00),
(2022, 'iPhone 13', 'Germany', 899.00, 900000, 'High', '35-44', 'Q3', 4500000, 4.5, 860.00),
(2022, 'iPhone 13', 'UK', 899.00, 870000, 'High', '25-34', 'Q3', 4000000, 4.4, 855.00),
(2022, 'iPhone 13', 'Japan', 899.00, 800000, 'High', '25-34', 'Q4', 3500000, 4.3, 840.00),

-- 2023 Data
(2023, 'iPhone 14', 'US', 999.00, 1000000, 'High', '25-34', 'Q3', 6000000, 4.8, 950.00),
(2023, 'iPhone 14', 'India', 999.00, 900000, 'Medium', '18-24', 'Q3', 3500000, 4.3, 950.00),
(2023, 'iPhone 14', 'China', 999.00, 950000, 'High', '25-34', 'Q3', 6500000, 4.7, 950.00),
(2023, 'iPhone 14', 'Germany', 999.00, 920000, 'High', '35-44', 'Q3', 5000000, 4.6, 960.00),
(2023, 'iPhone 14', 'UK', 999.00, 870000, 'High', '25-34', 'Q3', 4500000, 4.5, 955.00),
(2023, 'iPhone 14', 'Japan', 999.00, 830000, 'High', '25-34', 'Q4', 4000000, 4.4, 940.00),

-- More US Sales
(2021, 'iPhone 12', 'US', 799.00, 1220000, 'Medium', '18-24', 'Q3', 5100000, 4.3, 745.00),
(2022, 'iPhone 13', 'US', 899.00, 1080000, 'Medium', '18-24', 'Q3', 5600000, 4.5, 845.00),
(2023, 'iPhone 14', 'US', 999.00, 990000, 'Medium', '18-24', 'Q3', 6100000, 4.6, 945.00),
(2021, 'iPhone 12', 'US', 799.00, 1180000, 'Low', '18-24', 'Q4', 5200000, 4.1, 755.00),

-- More India Sales
(2021, 'iPhone 12', 'India', 799.00, 780000, 'Low', '18-24', 'Q4', 2900000, 4.0, 730.00),
(2022, 'iPhone 13', 'India', 899.00, 860000, 'Low', '18-24', 'Q4', 3300000, 4.1, 840.00),
(2023, 'iPhone 14', 'India', 999.00, 910000, 'Low', '18-24', 'Q4', 3700000, 4.2, 940.00),

-- Europe Sales
(2021, 'iPhone 12', 'France', 799.00, 800000, 'High', '25-34', 'Q3', 4000000, 4.4, 760.00),
(2022, 'iPhone 13', 'France', 899.00, 850000, 'High', '25-34', 'Q3', 4500000, 4.5, 860.00),
(2023, 'iPhone 14', 'France', 999.00, 920000, 'High', '25-34', 'Q3', 5000000, 4.7, 960.00),

-- Additional Rows for Diversity
(2021, 'iPhone 12', 'Brazil', 799.00, 400000, 'Low', '35-44', 'Q4', 2000000, 4.1, 760.00),
(2022, 'iPhone 13', 'Brazil', 899.00, 420000, 'Low', '35-44', 'Q4', 2200000, 4.2, 860.00),
(2023, 'iPhone 14', 'Brazil', 999.00, 450000, 'Low', '35-44', 'Q4', 2500000, 4.3, 960.00),
(2021, 'iPhone 12', 'Australia', 799.00, 600000, 'High', '25-34', 'Q3', 3500000, 4.5, 755.00),
(2022, 'iPhone 13', 'Australia', 899.00, 650000, 'High', '25-34', 'Q3', 4000000, 4.6, 855.00),
(2023, 'iPhone 14', 'Australia', 999.00, 700000, 'High', '25-34', 'Q3', 4500000, 4.7, 955.00),

-- Southeast Asia Sales
(2021, 'iPhone 12', 'Singapore', 799.00, 400000, 'High', '35-44', 'Q3', 2300000, 4.5, 750.00),
(2022, 'iPhone 13', 'Singapore', 899.00, 430000, 'High', '35-44', 'Q3', 2500000, 4.6, 850.00),
(2023, 'iPhone 14', 'Singapore', 999.00, 460000, 'High', '35-44', 'Q3', 2800000, 4.7, 950.00),

-- Repeat for Various Models & Regions
(2021, 'iPhone 12', 'Canada', 799.00, 520000, 'High', '25-34', 'Q3', 3000000, 4.4, 760.00),
(2022, 'iPhone 13', 'Canada', 899.00, 550000, 'High', '25-34', 'Q3', 3300000, 4.5, 860.00),
(2023, 'iPhone 14', 'Canada', 999.00, 600000, 'High', '25-34', 'Q3', 3600000, 4.6, 960.00),
(2021, 'iPhone 12', 'Mexico', 799.00, 350000, 'Low', '18-24', 'Q4', 2000000, 4.1, 750.00),
(2022, 'iPhone 13', 'Mexico', 899.00, 370000, 'Low', '18-24', 'Q4', 2200000, 4.2, 850.00),
(2023, 'iPhone 14', 'Mexico', 999.00, 390000, 'Low', '18-24', 'Q4', 2500000, 4.3, 950.00);


select * from sales_data; -- show all the data present

-- cleaning the data

-- Find rows where data is missing ( NULL or 0 values)
SELECT * FROM sales_data
WHERE Marketing_Spend IS NULL OR Marketing_Spend = 0
   OR Competitor_Price IS NULL OR Competitor_Price = 0;

-- Outliers Detection

SELECT * FROM sales_data
WHERE Customer_Rating > 5 OR Customer_Rating < 1;

-- Removing Duplicate Rows

-- Find duplicate rows based on a combination of columns

-- disable safe mode first
SET SESSION sql_mode = '';

WITH CTE AS (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY Year, Model, Region ORDER BY Year) AS RowNum
    FROM sales_data
)
SELECT * FROM CTE WHERE RowNum > 1;

-- Delete duplicates while keeping the first instance
WITH CTE AS (
    SELECT Year, Model, Region, ROW_NUMBER() OVER (PARTITION BY Year, Model, Region ORDER BY Year) AS RowNum
    FROM sales_data
)
DELETE FROM sales_data
WHERE EXISTS (
    SELECT 1 FROM CTE
    WHERE sales_data.Year = CTE.Year
      AND sales_data.Model = CTE.Model
      AND sales_data.Region = CTE.Region
      AND CTE.RowNum > 1
);


-- Data Normalization (Currency Conversion)

UPDATE sales_data
SET Price = CASE 
    WHEN Region = 'India' THEN Price * 0.013  -- INR to USD
    WHEN Region = 'Germany' THEN Price * 1.1  -- EUR to USD
    WHEN Region = 'UK' THEN Price * 1.3      -- GBP to USD
    ELSE Price
END;


-- Categorical Binning

-- Standardizing Age_Group by merging close ranges
UPDATE sales_data
SET Age_Group = CASE
    WHEN Age_Group IN ('18-24', '25-34') THEN '18-34'
    WHEN Age_Group IN ('35-44', '45-54') THEN '35-54'
    ELSE Age_Group
END;

-- Binning Income_Group into a more standardized format
UPDATE sales_data
SET Income_Group = CASE
    WHEN Income_Group = 'Low' THEN 'Low Income'
    WHEN Income_Group = 'Medium' THEN 'Middle Income'
    WHEN Income_Group = 'High' THEN 'High Income'
    ELSE Income_Group
END;

-- Calculate price elasticity as a percentage of competitor price

UPDATE sales_data
SET Price_Elasticity = (Price / Competitor_Price) * 100;


-- shows the year on year growth 

SELECT 
    Year,
    Model,
    SUM(Units_Sold) AS Total_Units_Sold,
    LAG(SUM(Units_Sold)) OVER (ORDER BY Year) AS Previous_Year_Sales,
    (SUM(Units_Sold) - LAG(SUM(Units_Sold)) OVER (ORDER BY Year)) / LAG(SUM(Units_Sold)) OVER (ORDER BY Year) * 100 AS YoY_Growth
FROM 
    sales_data
GROUP BY 
    Year, Model
ORDER BY 
    Year DESC;
    
-- iphone 16 units sold
WITH RECURSIVE sales_data_with_growth AS (
    SELECT 
        Year,
        Model,
        SUM(Units_Sold) AS Total_Units_Sold,
        LAG(SUM(Units_Sold)) OVER (ORDER BY Year) AS Previous_Year_Sales,
        (SUM(Units_Sold) - LAG(SUM(Units_Sold)) OVER (ORDER BY Year)) / LAG(SUM(Units_Sold)) OVER (ORDER BY Year) AS Growth_Rate
    FROM 
        sales_data
    GROUP BY 
        Year, Model
),
growth_trend AS (
    SELECT 
        AVG(Growth_Rate) AS Avg_Growth_Rate,
        AVG(Growth_Rate) - STDDEV(Growth_Rate) AS Conservative_Growth_Rate
    FROM 
        sales_data_with_growth
    WHERE 
        Growth_Rate IS NOT NULL
),
future_predictions AS (
    SELECT 
        Year,
        Model,
        Total_Units_Sold,
        Growth_Rate
    FROM 
        sales_data_with_growth
    WHERE 
        Year = (SELECT MAX(Year) FROM sales_data_with_growth)
    
    UNION ALL
    
    SELECT 
        fp.Year + 1,
        CONCAT('iPhone ', CAST(SUBSTRING(fp.Model, 7) AS UNSIGNED) + 1),
        ROUND(fp.Total_Units_Sold * (1 + gt.Conservative_Growth_Rate), 0),
        gt.Conservative_Growth_Rate
    FROM 
        future_predictions fp
    CROSS JOIN 
        growth_trend gt
    WHERE 
        fp.Year < 2025
)
SELECT 
    Year,
    Model,
    Total_Units_Sold AS Predicted_Units_Sold,
    ROUND(Growth_Rate * 100, 2) AS Predicted_Growth_Percentage
FROM 
    future_predictions
ORDER BY 
    Year;
