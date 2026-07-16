# DAX Measures

These measures were used to format KPI cards and chart values in Power BI.

## Executive KPI Display Measures

```DAX
Total Customers Display =
FORMAT(MAX('public vw_executive_kpis'[total_customers]), "#,##0")
```

```DAX
Churn Rate Display =
FORMAT(MAX('public vw_executive_kpis'[churn_rate]), "0.0") & "%"
```

```DAX
Monthly Revenue Display =
"$" & FORMAT(MAX('public vw_executive_kpis'[monthly_revenue]) / 1000, "0.0") & "K"
```

```DAX
Revenue at Risk Display =
"$" & FORMAT(MAX('public vw_executive_kpis'[revenue_at_risk]) / 1000, "0.0") & "K"
```

```DAX
Avg Monthly Charge Display =
"$" & FORMAT(MAX('public vw_executive_kpis'[avg_monthly_charge]), "0.00")
```

```DAX
Retention Rate Display =
FORMAT(MAX('public vw_executive_kpis'[retention_rate]), "0.0") & "%"
```

## Chart Measures

```DAX
Contract Churn Rate % =
DIVIDE(MAX('public vw_churn_by_contract'[churn_rate]), 100)
```

Format this measure as **Percentage** with **1 decimal place** in Power BI.

```DAX
Tenure Churn Rate % =
DIVIDE(MAX('public vw_churn_by_tenure_group'[churn_rate]), 100)
```

Format this measure as **Percentage** with **1 decimal place** in Power BI.
