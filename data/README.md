# Data Source

Dataset used: **IBM Telco Customer Churn Dataset**

Source: Kaggle

The raw dataset is not included in this repository. Download the CSV from Kaggle and load it into PostgreSQL using the SQL scripts in the `sql/` folder.

Suggested raw file name:

```text
WA_Fn-UseC_-Telco-Customer-Churn.csv
```

Recommended workflow:

1. Download the dataset from Kaggle.
2. Rename the columns to match the SQL table if needed.
3. Load the CSV into the `raw_telco_churn` table.
4. Run the SQL scripts in order.
5. Connect Power BI to the PostgreSQL database.
