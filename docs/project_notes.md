# Project Notes

## Project Name

Customer Churn & Revenue Analytics Dashboard

## Goal

Build an end-to-end portfolio project that demonstrates SQL, PostgreSQL, Power BI, DAX, data modeling, dashboard design, and business analysis.

## Business Problem

Customer churn affects both customer count and recurring revenue. The dashboard helps identify which customer segments are leaving, how much monthly revenue is at risk, and what retention actions the business should consider.

## Workflow

1. Load raw churn data into PostgreSQL.
2. Create a cleaned SQL view.
3. Create analytical views for KPIs, churn drivers, revenue risk, and customer segments.
4. Connect Power BI to PostgreSQL.
5. Build executive summary dashboard.
6. Use DAX measures for clean KPI formatting.
7. Document insights and recommendations.

## Dashboard Design Theme

- Background: `#0A1220`
- Sidebar: `#0C1526`
- Card background: `#131E36`
- Border: `#223B63`
- Primary blue: `#4C8DFF`
- Red/churn risk: `#FB6F6F`
- Yellow/revenue risk: `#F4B740`
- Green/retention: `#2FD3A5`
- White text: `#F1F5FB`
- Muted text: `#93A3BE`

## Executive KPI Cards

- Total Customers
- Churn Rate
- Monthly Revenue
- Revenue at Risk
- Average Monthly Charge
- Retention Rate

## Main Insight

Month-to-month customers have the highest churn rate, which suggests that contract commitment is an important churn-risk factor.

## Recommended Business Actions

- Offer incentives to move month-to-month customers into longer contracts.
- Improve onboarding for new customers.
- Monitor high-risk customer segments earlier.
- Use revenue-at-risk analysis to prioritize retention campaigns.
- Build customer-success workflows around tenure and contract type.
