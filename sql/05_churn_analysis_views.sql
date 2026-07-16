-- 05_churn_analysis_views.sql
-- Views for churn-driver analysis.

CREATE OR REPLACE VIEW vw_churn_by_contract AS
SELECT
    contract,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(AVG(churn_flag) * 100, 1) AS churn_rate
FROM vw_telco_clean
GROUP BY contract
ORDER BY churn_rate DESC;

CREATE OR REPLACE VIEW vw_churn_by_tenure_group AS
SELECT
    tenure_group,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(AVG(churn_flag) * 100, 1) AS churn_rate
FROM vw_telco_clean
GROUP BY tenure_group
ORDER BY
    CASE tenure_group
        WHEN '0-12 months' THEN 1
        WHEN '13-24 months' THEN 2
        WHEN '25-48 months' THEN 3
        ELSE 4
    END;

CREATE OR REPLACE VIEW vw_customer_segments AS
SELECT
    contract,
    tenure_group,
    internet_service,
    payment_method,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(AVG(churn_flag) * 100, 1) AS churn_rate,
    ROUND(SUM(monthly_charges), 2) AS monthly_revenue,
    ROUND(SUM(CASE WHEN churn = 'Yes' THEN monthly_charges ELSE 0 END), 2) AS revenue_at_risk
FROM vw_telco_clean
GROUP BY contract, tenure_group, internet_service, payment_method;
