USE ev_market_db;

-- 1. Row count and coverage
SELECT COUNT(*) AS total_records,
       COUNT(DISTINCT manufacturer) AS manufacturer_count,
       COUNT(DISTINCT vehicle_category) AS category_count
FROM ev_vehicles;

-- 2. Sales by manufacturer
SELECT manufacturer, SUM(annual_sales) AS total_sales
FROM ev_vehicles
GROUP BY manufacturer
ORDER BY total_sales DESC;

-- 3. Sales by vehicle category
SELECT vehicle_category, SUM(annual_sales) AS total_sales
FROM ev_vehicles
GROUP BY vehicle_category
ORDER BY total_sales DESC;

-- 4. Battery technology model counts
SELECT battery_technology, COUNT(*) AS model_count
FROM ev_vehicles
GROUP BY battery_technology
ORDER BY model_count DESC;

-- 5. Average range by category
SELECT vehicle_category, ROUND(AVG(driving_range_km), 1) AS average_range_km
FROM ev_vehicles
GROUP BY vehicle_category
ORDER BY average_range_km DESC;

-- 6. Average customer rating by manufacturer
SELECT manufacturer, ROUND(AVG(customer_rating), 2) AS average_rating
FROM ev_vehicles
GROUP BY manufacturer
ORDER BY average_rating DESC;

-- 7. Model count by manufacturing country
SELECT manufacturing_country, COUNT(*) AS model_count
FROM ev_vehicles
GROUP BY manufacturing_country
ORDER BY model_count DESC;

-- 8. Annual sales trend
SELECT year, SUM(annual_sales) AS total_sales
FROM ev_vehicles
GROUP BY year
ORDER BY year;
