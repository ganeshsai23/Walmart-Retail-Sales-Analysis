# Walmart Retail Sales Analysis

An end-to-end Data Analytics project that transforms raw Walmart retail sales data into actionable business insights using Python, MySQL, and Microsoft Power BI.

---

## Project Overview

This project demonstrates a complete Data Analytics workflow, beginning with raw retail sales data and ending with an interactive Power BI dashboard. The workflow includes data preprocessing, exploratory data analysis (EDA), SQL-based business analysis, and business intelligence reporting.

The objective of this project is to analyze retail sales performance across multiple business dimensions such as products, customers, sales, profitability, shipping operations, and geographical regions to support data-driven decision-making.

---

## Project Objectives

- Perform data cleaning and preprocessing using Python.
- Conduct exploratory data analysis to understand data quality and business trends.
- Design and execute SQL queries to answer business questions.
- Develop interactive Power BI dashboards for business reporting.
- Generate meaningful insights from retail sales data.
- Demonstrate an end-to-end Data Analytics workflow using industry-standard tools.

---

## Technology Stack

| Category | Technologies |
|----------|--------------|
| Programming Language | Python |
| Data Processing | Pandas, NumPy |
| Development Environment | Jupyter Notebook |
| Database | MySQL |
| Database Tool | MySQL Workbench |
| Business Intelligence | Microsoft Power BI |
| Data Visualization | Power BI |
| Version Control | Git |
| Repository Hosting | GitHub |
| Documentation | Google Docs |

---

## Project Workflow

The project follows a structured end-to-end Data Analytics workflow that transforms raw retail sales data into actionable business insights.

```
Raw Retail Dataset
        │
        ▼
Python Data Preprocessing
(Data Cleaning, Validation, Missing Value Treatment,
Data Standardization & Feature Engineering)
        │
        ▼
Exploratory Data Analysis (EDA)
(Statistical Analysis & Data Understanding)
        │
        ▼
MySQL Database Implementation
(Data Import & Schema Validation)
        │
        ▼
SQL Business Analysis
(Business Queries & Performance Analysis)
        │
        ▼
Microsoft Power BI
(Data Modeling, Dashboard Development &
Interactive Visualizations)
        │
        ▼
Business Insights & Decision Support
```

Each phase of the workflow builds upon the previous stage, ensuring that the final dashboard is based on clean, validated, and business-ready data. This structured approach enables accurate analysis, improves data reliability, and supports informed business decision-making.

---

## Dataset Information

**Dataset Name:** Walmart Retail Sales Dataset

**Dataset Source:** https://www.kaggle.com/datasets/saadabdurrazzaq/walmart-retail-data

The dataset contains retail transaction records covering customer information, product details, sales performance, shipping operations, order information, and profitability metrics. It provides a realistic business scenario for performing end-to-end retail sales analytics.

### Dataset Highlights

- Retail sales transactions
- Customer demographics
- Product hierarchy
- Sales and profit metrics
- Shipping information
- Regional and market data
- Order and delivery details

### Data Preparation

Before analysis, the dataset underwent extensive preprocessing using Python to improve data quality. The preprocessing workflow included:

- Handling missing values
- Removing duplicate records
- Correcting inconsistent data
- Data type validation
- Outlier detection
- Feature engineering
- Exporting a cleaned dataset for SQL analysis and Power BI visualization

---

## Repository Structure

| File | Description |
|------|-------------|
| `README.md` | Overview of the project, workflow, technology stack, and repository contents. |
| `Walmart Retail Data.csv` | Original raw retail sales dataset used for analysis. |
| `walmart_data.csv` | Cleaned and preprocessed dataset generated after Python data cleaning. |
| `Walmart_Retail_Preprocessing.ipynb` | Jupyter Notebook containing data preprocessing, cleaning, validation, and exploratory data analysis. |
| `requirements.txt` | Python libraries required to execute the notebook successfully. |
| `Walmart_Retail_Business_Analysis.sql` | SQL queries used to perform business analysis and answer key business questions. |
| `Walmart_Retail_Dashboard.pbix` | Microsoft Power BI dashboard containing interactive visualizations and business reports. |
| `Walmart_Retail_Dashboard.pdf` | Exported PDF version of the Power BI dashboard for quick viewing. |
| `Walmart_Retail_Sales_Analysis_Documentation.pdf` | Complete project documentation describing every implementation phase and methodology. |

---

## Business Questions Solved

The SQL analysis was designed to answer business-oriented questions that help evaluate retail performance, customer behavior, operational efficiency, and profitability.

The analysis addressed areas including:

- Sales performance across regions and markets
- Product category and sub-category performance
- Top-performing and least-performing products
- Customer purchasing behavior
- Customer segment analysis
- Regional profitability analysis
- Shipping mode performance
- Order priority analysis
- Sales and profit trends
- Discount impact on profitability
- High-value customer identification
- Revenue contribution by category
- Loss-making products and regions
- Shipping cost analysis
- Business performance comparison across different dimensions

These SQL-based analyses provided the foundation for the interactive Power BI dashboard and enabled the generation of actionable business insights for decision-making.

---

## Power BI Dashboard

An interactive Power BI dashboard was developed to transform analytical results into an intuitive business reporting solution. The dashboard enables users to monitor retail performance, identify business trends, compare key performance indicators, and explore data across multiple business dimensions.

### Dashboard Features

- Executive business performance overview
- Sales and profit analysis
- Customer performance analysis
- Product category performance
- Regional and market analysis
- Shipping and operational performance
- Interactive filtering and drill-down capabilities
- KPI-based business reporting

### Key Capabilities

- Analyze sales performance across different business dimensions.
- Monitor profitability using interactive visualizations.
- Compare customer segments and purchasing behavior.
- Identify top-performing and underperforming products.
- Evaluate regional business performance.
- Support business decision-making through dynamic reporting.

The dashboard was developed using Microsoft Power BI and is included in this repository as both a Power BI project file (`.pbix`) and an exported PDF report for easy accessibility.

---

## Key Business Insights

The analysis of 8,337 retail transaction records revealed differences in profitability across product categories, geographical regions, and shipping methods.

### 1. Technology Delivered the Highest Profitability

- Technology generated approximately **$886,314 in profit**, with a **14.8% profit margin**.
- Office Supplies recorded a **14.1% profit margin**, while Furniture had the lowest margin at **1.5%**.
- **Business implication:** Product-level decisions should consider profitability alongside sales volume. Furniture's low margin warrants further investigation into pricing, discounts, and costs.

### 2. Furniture Was Loss-Making in the East Region

- Furniture recorded a loss of approximately **$11,352 in the East region**, despite the region generating approximately **$315,036 in total profit** across all product categories.
- Furniture was profitable in the Central, South, and West regions.
- **Business implication:** Investigate the East region's Furniture performance separately to identify potential pricing, discounting, or cost-related issues.

### 3. Regional Profitability Varied Significantly

- The South region achieved the highest profit margin at **13.3%**.
- Central followed at **10.3%**, East at **9.3%**, and West at **8.0%**.
- **Business implication:** Compare regional product mix, discount patterns, and operating costs to understand the differences and identify practices worth investigating in lower-margin regions.

### 4. Shipping Methods Had Different Cost Profiles

- Delivery Truck had an average shipping cost of approximately **$45**, compared with approximately **$8** for Regular Air and Express Air.
- Average delivery times across shipping methods were approximately **two days**.
- **Business implication:** Evaluate shipping costs alongside delivery requirements and service expectations before making changes to fulfilment methods.

### 5. Sales and Profit Needed to Be Evaluated Together

- The analysis identified differences between revenue generation and profitability across products, regions, and customers.
- The dashboard also highlighted loss-making customers and product-region combinations for further investigation.
- **Business implication:** Monitoring sales alone can obscure areas of weak or negative profitability. Combining sales, profit, and profit margin provides a more complete view of business performance.

These findings were developed through SQL-based business analysis and presented using interactive Power BI dashboards. The results demonstrate how data cleaning, analytical querying, and business intelligence reporting can support evidence-based investigation of retail performance.

---

## How to Run the Project

### 1. Clone the Repository

```bash
git clone https://github.com/<your-username>/Walmart-Retail-Sales-Analysis.git
```

### 2. Install Python Dependencies

Install the required Python libraries using the provided `requirements.txt` file.

```bash
pip install -r requirements.txt
```

### 3. Execute the Data Preprocessing Notebook

Open the Jupyter Notebook and execute all cells sequentially to reproduce the data preprocessing and exploratory data analysis workflow.

```
Walmart_Retail_Preprocessing.ipynb
```

### 4. Execute SQL Analysis

Import the cleaned dataset into MySQL and execute the SQL script to perform the business analysis.

```
Walmart_Retail_Business_Analysis.sql
```

### 5. Open the Power BI Dashboard

Open the following file using Microsoft Power BI Desktop.

```
Walmart_Retail_Dashboard.pbix
```

If Power BI Desktop is unavailable, the exported dashboard can be viewed using:

```
Walmart_Retail_Dashboard.pdf
```

## Documentation

A detailed project documentation describing every implementation phase, methodology, preprocessing step, SQL analysis, dashboard development, and business insights is included in this repository.

File:
- Walmart_Retail_Sales_Analysis_Documentation.pdf

## Skills Demonstrated

### Data Analytics
- Data Cleaning
- Data Preprocessing
- Data Validation
- Missing Value Treatment
- Duplicate Detection & Removal
- Outlier Detection
- Feature Engineering
- Exploratory Data Analysis (EDA)
- Statistical Data Analysis

### Python
- Pandas
- NumPy
- Data Manipulation
- Data Transformation
- Data Export

### SQL
- Database Design
- Data Import
- Business Query Development
- Data Aggregation
- Filtering & Sorting
- Joins
- Group By
- Window Functions
- Common Table Expressions (CTEs)
- Business KPI Analysis

### Business Intelligence
- Microsoft Power BI
- Data Modeling
- Relationship Management
- DAX Measures
- KPI Dashboard Development
- Interactive Reporting
- Drill-down Analysis
- Slicers & Filters
- Executive Dashboard Design

### Business Analysis
- Sales Performance Analysis
- Profitability Analysis
- Customer Segmentation
- Product Performance Analysis
- Regional Performance Analysis
- Shipping & Operational Analysis
- Revenue Analysis
- Discount Impact Analysis
- Business Insight Generation
- Decision Support Analytics

### Data Management
- MySQL
- Relational Database Management
- CSV Data Handling
- Excel Data Integration

### Documentation & Collaboration
- Technical Documentation
- GitHub
- Repository Management
- Project Documentation
- Portfolio Development

## Dashboard Preview

The interactive dashboard is available as:

- Walmart_Retail_Dashboard.pbix
- Walmart_Retail_Dashboard.pdf

## Project Outcome

This project demonstrates a complete end-to-end Data Analytics workflow, beginning with raw retail transaction data and ending with an interactive Power BI dashboard. It showcases practical skills in Python, SQL, Power BI, and business intelligence while solving real-world retail analytics problems.

