ustomer Shopping Behaviour Analysis
Project Overview

An end-to-end ETL and data analytics project using customer shopping behaviour data.

Python and Pandas were used to extract, clean, and transform raw CSV/Excel data before loading the processed data directly into PostgreSQL through a Python database connection. The PostgreSQL database was then connected directly to Power BI and Tableau for data analysis, visualization, and reporting.

ETL Pipeline
Raw CSV / Excel
       ↓
Python + Pandas
       ↓
Extract
       ↓
Clean & Transform
       ↓
PostgreSQL
       ↓
SQL Analysis
       ↓
Power BI + Tableau
       ↓
Dashboards & Insights
Data Preparation

The raw customer shopping behaviour dataset was processed using Python and Pandas.

Key tasks included:

Cleaning and preparing the raw dataset
Standardizing and organizing data fields
Checking and converting data types
Handling data quality issues
Creating new analytical columns
Creating True/False indicators for subscription status
Creating True/False indicators for whether a discount was applied
Preparing the processed dataset for database storage and analysis
Database

The transformed data was loaded directly into PostgreSQL using Python, rather than manually importing the processed CSV into the database.

SQL was then used to query and analyze the stored data.

Visualization

The PostgreSQL database was connected directly to:

Power BI for dashboards and interactive reporting
Tableau for additional data visualization and analysis

The analysis explored customer demographics, purchasing behaviour, spending patterns, subscriptions, discounts, product categories, and other customer attributes.

Technology Stack

Python | Pandas | PostgreSQL | SQL | Power BI | Tableau | Excel | CSV

Skills Demonstrated
ETL
Data Extraction
Data Cleaning
Data Transformation
Data Loading
Python & Pandas
SQL
PostgreSQL
Data Visualization
Business Intelligence
Dashboard Development
Exploratory Data Analysis
Project Architecture
                 ETL PIPELINE
                      │
                      ▼
              CSV / Excel Data
                      │
                      ▼
                Python / Pandas
                      │
             Extract & Transform
                      │
                      ▼
                 PostgreSQL
                      │
                  SQL Queries
                      │
            ┌─────────┴─────────┐
            ▼                   ▼
         Power BI             Tableau
            │                   │
            └─────────┬─────────┘
                      ▼
              Data Insights
