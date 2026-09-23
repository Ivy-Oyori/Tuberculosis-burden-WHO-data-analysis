Global Tuberculosis Burden Analysis (1990–2013)
Project Overview

An end-to-end data analysis project examining the global burden of tuberculosis using World Health Organization (WHO) data covering 219 countries and 5,120 records from 1990 to 2013.

The project uses Python, Pandas, PostgreSQL, SQL, Power BI, and Tableau to clean, validate, analyze, and visualize TB trends, regional differences, HIV co-infection, case detection, and mortality.

Data Analysis Workflow
WHO Raw Dataset
       ↓
Python + Pandas
       ↓
Data Cleaning & Validation
       ↓
PostgreSQL
       ↓
SQL Analysis
       ↓
Power BI + Tableau
       ↓
Dashboards & Insights
Data Preparation

Python and Pandas were used to prepare the raw WHO dataset for analysis.

Key tasks included:

Removed empty and unnecessary columns
Standardized column names
Verified data types
Checked for duplicate records
Identified missing HIV co-infection estimates
Flagged 65 countries without HIV estimates
Excluded missing HIV estimates from HIV-related averages rather than treating them as zero
SQL & Database Analysis

The cleaned dataset was loaded into PostgreSQL, where SQL queries were used to analyze:

Global TB incidence, prevalence, and mortality trends
Regional and country-level differences
TB/HIV co-infection
Case detection and mortality
WHO estimate uncertainty
Changes in TB indicators over time
Visualization

The analysis was presented using Power BI and Tableau, including:

Trend charts
Regional comparisons
Geographic maps
HIV/TB analysis
Case detection and mortality analysis
Data quality and uncertainty visualizations
Key Findings
Global TB incidence, prevalence, and mortality rates declined between 1990 and 2013.
Africa and South East Asia carried the highest TB burden across the period.
HIV co-infection was heavily concentrated in Africa.
Case detection and mortality showed a negative relationship across all six WHO regions, although the strength varied by region.
65 countries had no HIV co-infection estimate, representing an important limitation when interpreting global HIV/TB statistics.
Tools & Technologies

Python | Pandas | PostgreSQL | SQL | Power BI | Tableau | Excel

Skills Demonstrated

Data Cleaning · Data Validation · Exploratory Data Analysis · SQL · PostgreSQL · Statistical Analysis · Data Visualization · Dashboard Development · Data Storytelling
