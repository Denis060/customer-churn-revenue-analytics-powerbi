-- 06_revenue_analysis_views.sql
-- Views for revenue and revenue-at-risk analysis.

CREATE OR REPLACE VIEW vw_revenue_by_internet_service AS
SELECT
    internet_service,
    COUNT(*) AS total_customers,
    ROUND(SUM(monthly_charges), 2) AS monthly_revenue,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charge,
    ROUND(AVG(churn_flag) * 100, 1) AS churn_rate
FROM vw_telco_clean
GROUP BY internet_service
ORDER BY monthly_revenue DESC;

CREATE OR REPLACE VIEW vw_revenue_at_risk_by_payment_method AS
SELECT
    payment_method,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(SUM(CASE WHEN churn = 'Yes' THEN monthly_charges ELSE 0 END), 2) AS revenue_at_risk,
    ROUND(AVG(churn_flag) * 100, 1) AS churn_rate
FROM vw_telco_clean
GROUP BY payment_method
ORDER BY revenue_at_risk DESC;
