# Sales Report – Power BI Project

## Project Overview  
This project showcases a **Sales Management Dashboard** built using **Power BI** for the fictional company based on `AdventureWorksDW2019` data. The goal was to support sales decision-making by visualizing Internet Sales performance, tracking sales against budgets, and enabling drilldowns by customer and product.This is my First PowerBi project.

## Business Need  
**Reporter:** Steven – Sales Manager  
**Goal:** Enable better tracking of Internet Sales performance, top-performing customers and products, and monitor sales vs. budget trends.  
**Value:** Actionable insights for sales representatives and managers using interactive dashboards.

## User Stories

| # | Role                | Request                                                 | Benefit                                                  |
|---|---------------------|---------------------------------------------------------|-----------------------------------------------------------|
| 1 | Sales Manager       | Dashboard overview of Internet Sales                   | Identify top customers/products and overall sales health |
| 2 | Sales Representative| Sales by Customer                                       | Track top customers and find upselling opportunities     |
| 3 | Sales Representative| Sales by Product                                        | Monitor product performance and strategize promotions     |
| 4 | Sales Manager       | Compare sales vs. budget                                | Analyze sales performance against targets                |

## Data Preparation

### Data Source  
- **SQL Server Database**: `AdventureWorksDW2019`  
- **Excel Budget File**: Monthly budgets from 2023–2025  
- **Power BI Desktop**: Data modeling, transformations, and visuals

### Tables Used  
| Table            | Type         | Purpose                          |
|------------------|--------------|----------------------------------|
| DIM_Calendar     | Dimension    | Date hierarchy and filtering     |
| DIM_Customers    | Dimension    | Customer details and segmentation|
| DIM_Products     | Dimension    | Product details and categories   |
| FACT_InternetSales | Fact       | Actual Internet Sales data       |
| FACT_Budget      | Fact (Excel) | Sales budget by month and year   |

## Project Structure

```
Power-Bi-Projects/
└── Sales Report/
    ├── Data/
    │   ├── DIM_Calendar.csv
    │   ├── DIM_Customers.csv
    │   ├── DIM_Products.csv
    │   ├── FACT_InternetSales.csv
    │   └── FACT_BudgetNEW.xlsx
    ├── Sql Transformations/
    │   └── Dim_Calendar.sql
    │   └── DIM_Customer.sql
    │   └── Dim_Product.sql
    │   └── FACT_InternetSales.sql
    ├── Business Overview/
    │   └── Business_Demand_Overview.docx
    ├── report/
    │   └── SalesReport.pbix
    └── README.md
```

## Final Deliverables

- **Power BI Dashboard**  
  - Overview page with KPIs: Total Sales, Sales vs Budget  
  - Customer-wise and Product-wise deep dives  
  - Slicers for Year and Month  
  - Trend analysis with dynamic visuals

- **SQL Scripts**  
  - Cleansed and transformed data from the AdventureWorksDW2019 warehouse

- **Well-structured project files**  
  - Organized datasets, queries, and documentation for full transparency and reproducibility

## Key Learnings & Tools

- Data modeling with star schema in Power BI  
- DAX for KPIs (e.g., Sales, Budget Utilization)  
- Data relationships and calendar dimension  
- Conditional formatting, slicers, and trend visualizations  
- GitHub project organization for data portfolios

## How to Use

1. Clone the repo  
2. Open `SalesReport.pbix` using Power BI Desktop  
3. Ensure dataset paths are updated if needed  
