Tech Layoffs Data Cleaning Project (SQL)
📌 Project Overview
This project focuses on cleaning and preparing a real‑world layoffs dataset for analysis using SQL. The raw data contains inconsistencies, missing values, duplicate entries, and formatting issues. The goal was to transform the dataset into a clean, analysis‑ready table using a structured, reproducible SQL workflow.

📂 Dataset
Source: Public layoffs dataset (CSV)
Columns include:

Company

Location

Industry

Total laid off

Percentage laid off

Date

Stage

Country

Funds raised (millions)

🛠 Tools & Technologies
MySQL

SQL Window Functions

CTEs

Joins

Data Transformation

GitHub

🧹 Data Cleaning Steps
Created staging tables

Preserved raw data

Added row_num for duplicate detection

Removed duplicate records

Used ROW_NUMBER() with partitioning

Standardized values

Trimmed whitespace

Standardized “Crypto” industry

Cleaned country names

Converted date formats

Handled missing values

Filled missing industries using self‑joins

Removed rows with no usable layoff data

Converted data types

Converted date column to proper DATE type

Created final cleaned table

Exported as layoffs_cleaned

📊 SQL Concepts Demonstrated
Window functions

Data type conversion

Conditional updates

Deduplication

NULL handling

Data standardization

Table creation

📁 Repository Structure
Code
layoffs-data-cleaning-project/
│
├── data/
│   └── layoffs_raw.csv
│
├── sql/
│   ├── data_cleaning.sql
│   └── analysis_queries.sql
│
├── screenshots/
│   ├── raw_data.png
│   ├── duplicate_detection.png
│   ├── cleaned_output.png
│
└── README.md
📈 Key Learning Outcomes
Built a reproducible SQL data‑cleaning pipeline

Improved data quality through standardization and validation

Demonstrated SQL proficiency with real‑world messy data

Prepared dataset for analytics and dashboarding

⭐ 2. GitHub Folder Structure
Use this exact structure:

Code
layoffs-data-cleaning-project/
│
├── data/
│   └── layoffs_raw.csv
│
├── sql/
│   ├── data_cleaning.sql
│   ├── analysis_queries.sql
│
├── screenshots/
│   ├── raw_table.png
│   ├── duplicate_removal.png
│   ├── final_cleaned_output.png
│
└── README.md
This is the standard structure used in analytics portfolios.