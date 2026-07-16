-- 03_cleaning_view.sql
-- Cleaned view used as the base model for Power BI.
-- Converts total_charges to numeric and creates useful analytical fields.

CREATE OR REPLACE VIEW vw_telco_clean AS
SELECT
    customer_id,
    gender,
    senior_citizen,
    partner,
    dependents,
    tenure,
    CASE
        WHEN tenure <= 12 THEN '0-12 months'
        WHEN tenure <= 24 THEN '13-24 months'
        WHEN tenure <= 48 THEN '25-48 months'
        ELSE '49+ months'
    END AS tenure_group,
    phone_service,
    multiple_lines,
    internet_service,
    online_security,
    online_backup,
    device_protection,
    tech_support,
    streaming_tv,
    streaming_movies,
    contract,
    paperless_billing,
    payment_method,
    monthly_charges,
    NULLIF(TRIM(total_charges), '')::NUMERIC(10,2) AS total_charges,
    churn,
    CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END AS churn_flag,
    CASE WHEN churn = 'No' THEN 1 ELSE 0 END AS retained_flag
FROM raw_telco_churn;
