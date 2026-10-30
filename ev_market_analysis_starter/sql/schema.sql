CREATE DATABASE IF NOT EXISTS ev_market_db;
USE ev_market_db;

CREATE TABLE IF NOT EXISTS ev_vehicles (
  vehicle_id INT PRIMARY KEY,
  manufacturer VARCHAR(100),
  model VARCHAR(150),
  vehicle_category VARCHAR(50),
  year INT,
  annual_sales BIGINT,
  battery_technology VARCHAR(50),
  battery_capacity_kwh DECIMAL(8,2),
  driving_range_km DECIMAL(8,2),
  customer_rating DECIMAL(3,2),
  manufacturing_country VARCHAR(100),
  price DECIMAL(14,2)
);
