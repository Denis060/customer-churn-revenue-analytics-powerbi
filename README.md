# Customer Churn & Revenue Analytics Dashboard

> **Status:** Work in Progress  
> This project is currently being built in public. The PostgreSQL/SQL layer and KPI section are complete. The remaining Power BI visuals are still under development.

## Project Overview

This project is an end-to-end customer churn and revenue analytics dashboard built using **PostgreSQL, SQL, Power BI, and DAX**.

The goal is to analyze customer churn behavior, identify high-risk customer segments, measure monthly revenue at risk, and provide business recommendations for improving customer retention.

The project uses the **IBM Telco Customer Churn dataset** and follows a realistic analytics workflow:

1. Load raw customer data into PostgreSQL
2. Clean and transform the data using SQL
3. Create analytical SQL views for dashboard-ready metrics
4. Connect PostgreSQL to Power BI
5. Build an executive dashboard using Power BI
6. Format KPI cards using DAX measures
7. Present churn, revenue, contract, tenure, and payment-method insights

## Business Questions

This dashboard is designed to answer:

- What is the overall churn rate?
- How much monthly recurring revenue is at risk?
- Which contract types have the highest churn?
- Which tenure groups are most vulnerable?
- Which payment methods are linked to revenue risk?
- Which customer segments should the business prioritize?
- What actions can reduce churn and improve retention?

## Tools Used

- **PostgreSQL** — database and SQL transformation layer
- **SQL** — data cleaning, analytical views, KPI preparation
- **Power BI** — dashboard design and visualization
- **DAX** — KPI formatting and display measures
- **IBM Telco Customer Churn Dataset** — customer churn analysis dataset

## Dashboard Preview

### Executive Dashboard Progress

The executive dashboard page is currently in progress.

The KPI cards have been completed with DAX formatting, and the first churn driver visual is being developed.

![Executive Dashboard Work in Progress](images/progress/03_executive_dashboard_wip.png)

## Current Progress

Completed:

- PostgreSQL database created
- Raw customer churn data loaded
- SQL cleaning view created
- Executive KPI SQL view created
- Churn and revenue analysis views created
- Power BI connected to PostgreSQL
- Executive dashboard layout created
- Sidebar navigation designed
- KPI cards created
- DAX measures added for clean KPI formatting

In progress:

- Churn Rate by Contract Type chart
- Churn by Tenure Group chart
- Monthly Revenue by Segment visual
- Revenue at Risk by Payment Method visual
- Business insight panel
- Final dashboard polish

## Dashboard Pages

### 1. Executive Summary

The executive summary page gives a high-level view of:

- Total customers
- Churn rate
- Monthly revenue
- Revenue at risk
- Average monthly charge
- Retention rate
- Churn by contract type
- Revenue-risk insights

### 2. Churn Drivers

This page focuses on understanding what factors are associated with customer churn.

### 3. Revenue Analysis

This page focuses on revenue exposure, monthly recurring revenue, and customer value risk.

### 4. Customer Segmentation

This page groups customers into meaningful business segments for retention planning.

## Key KPI Metrics

Current executive KPI values:

| Metric | Value |
|---|---:|
| Total Customers | 7,043 |
| Churn Rate | 26.5% |
| Monthly Revenue | $456.1K |
| Revenue at Risk | $139.1K |
| Average Monthly Charge | $64.76 |
| Retention Rate | 73.5% |

## SQL Views Created

The dashboard is powered by SQL views created in PostgreSQL.

```sql
vw_telco_clean
vw_executive_kpis
vw_churn_by_contract
vw_churn_by_tenure_group
vw_revenue_by_internet_service
vw_revenue_at_risk_by_payment_method
vw_customer_segments