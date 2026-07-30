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

**Source:** Kaggle

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

The analytical workflow identified several business patterns and performance trends from the Walmart retail sales dataset. These insights can support business strategy, operational improvements, and informed decision-making.

### Major Insights

- Sales performance varies significantly across different regions and markets.
- Profitability is influenced by both product category and discount levels.
- Certain product categories consistently contribute higher revenue and profit.
- Customer purchasing behavior differs across customer segments.
- Shipping methods impact operational costs and delivery performance.
- High-performing products and customers contribute a significant share of total revenue.
- Some products generate high sales but relatively low profit margins.
- Regional performance comparisons highlight opportunities for business expansion and operational improvement.
- Interactive filtering enables business users to analyze performance across multiple dimensions in real time.

The project demonstrates how structured data analytics can convert raw retail transaction data into meaningful business intelligence, enabling organizations to make evidence-based decisions.

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
