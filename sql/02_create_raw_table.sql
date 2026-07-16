-- 02_create_raw_table.sql
-- Raw table for the IBM Telco Customer Churn dataset.
-- Adjust column names if your CSV headers are different.

DROP TABLE IF EXISTS raw_telco_churn;

CREATE TABLE raw_telco_churn (
    customer_id VARCHAR(50),
    gender VARCHAR(20),
    senior_citizen INTEGER,
    partner VARCHAR(10),
    dependents VARCHAR(10),
    tenure INTEGER,
    phone_service VARCHAR(10),
    multiple_lines VARCHAR(50),
    internet_service VARCHAR(50),
    online_security VARCHAR(50),
    online_backup VARCHAR(50),
    device_protection VARCHAR(50),
    tech_support VARCHAR(50),
    streaming_tv VARCHAR(50),
    streaming_movies VARCHAR(50),
    contract VARCHAR(50),
    paperless_billing VARCHAR(10),
    payment_method VARCHAR(100),
    monthly_charges NUMERIC(10,2),
    total_charges TEXT,
    churn VARCHAR(10)
);
