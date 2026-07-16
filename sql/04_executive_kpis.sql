-- 04_executive_kpis.sql
-- Executive KPI view for Power BI KPI cards.

CREATE OR REPLACE VIEW vw_executive_kpis AS
SELECT
    COUNT(*) AS total_customers,
    ROUND(AVG(churn_flag) * 100, 1) AS churn_rate,
    ROUND(SUM(monthly_charges), 2) AS monthly_revenue,
    ROUND(SUM(CASE WHEN churn = 'Yes' THEN monthly_charges ELSE 0 END), 2) AS revenue_at_risk,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charge,
    ROUND(AVG(retained_flag) * 100, 1) AS retention_rate,
    SUM(churn_flag) AS churned_customers,
    SUM(retained_flag) AS retained_customers
FROM vw_telco_clean;
