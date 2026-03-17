# Retail-Banking-Analytics-Dashboard-sql-python-powerbi

**Interactive Power BI dashboard analyzing 3,000 retail banking clients** — built end-to-end from raw data to business insights.

## Problem Statement

Retail banks manage large volumes of customer data across loans, deposits, credit cards, savings, and other products. However, critical insights are often scattered across spreadsheets, legacy systems, or disconnected reports, making it difficult for:
- Relationship managers to identify high-value clients and cross-sell opportunities
- Product teams to understand which segments (e.g., income bands, banking relationship types) drive loan vs deposit growth
- Risk & compliance teams to monitor portfolio concentration (e.g., business lending dominance, risk weighting)
- Senior leadership to get a unified view of key performance metrics like loan-to-deposit ratio, average client value, and segment trends

This lack of centralized, interactive visibility leads to slower decision-making, missed revenue opportunities, and higher operational risk.

**Project Goal**: Build an interactive retail banking analytics dashboard using real-world-like customer data (3,000 anonymized records) to uncover actionable insights into customer behavior, loan & deposit performance, segment profitability, and product usage — enabling data-driven strategies for growth, retention, and risk management.

## 🎯 Project Objective

Created a comprehensive retail banking analytics solution to help understand customer behavior, loan & deposit patterns, segment performance, and key business metrics.

Main goals:
- Provide clear visibility into loan portfolio composition (especially business lending dominance)
- Identify high-value client segments (Private Banking, income bands, loyalty levels)
- Highlight cross-sell & retention opportunities
- Support data-driven decisions for relationship managers, product teams, and risk teams

## 📋 Dataset Overview

- **Rows**: 3,000 (clients)
- **Columns**: 25
- **Key Categories**:
  - **Client identifiers**: Client ID, Name
  - **Demographics**: Age, Nationality, Gender, Location ID
  - **Relationship**: Joined Bank, Banking Contact, Banking Relationship (Private/Retail/Commercial/Institutional), Year of Joining
  - **Financials**: Estimated Income, Bank Loans, Bank Deposits, Checking/Saving/Foreign Currency Accounts, Business Lending, Credit Card Balance, Superannuation Savings
  - **Other**: Occupation, Fee Structure, Loyalty Classification (Jade/Gold/etc.), Properties Owned, Risk Weighting, Income Band

## 🏗️ End-to-End Workflow

1. **Data Source**  
   - Original data: ~3,000 rows of anonymized client banking records

2. **Data Preparation**  
   - Cleaned & formatted in Excel  
   - Exported to CSV

3. **Database Layer**  
   - Imported CSV → MySQL Server  
   - Created database `banking_case` and table `banking`  
   - Verified structure & data quality with basic SQL queries

4. **Exploratory Data Analysis (EDA)**  
   - Connected MySQL → Python (pandas + mysql-connector)  
   - Performed descriptive statistics, outlier checks, distribution analysis  
   - Libraries used: pandas, numpy, matplotlib, seaborn

5. **Visualization & Dashboard**  
   - Connected Power BI Desktop directly to MySQL Server  
   - Built star-schema data model (fact + dimension-like tables via relationships)  
   - Created 4 main pages: Home, Loan Analysis, Deposit Analysis, Summary  
   - Used cards, bar/column charts, line charts, pie/donut charts, slicers & bookmarks

## 📊 Key Business Insights Delivered

The dashboard and analysis uncovered several high-impact observations about the retail banking portfolio. These insights were derived from:

- **SQL queries** (aggregation, grouping, cohort analysis) to extract segment-level patterns  
- **Python EDA** (distributions, binning, visualizations in Jupyter) to understand data skews and validate assumptions  
- **Power BI modeling & visuals** to bring everything together interactively

### Portfolio Overview
- Total Clients: **3,000**
- Average Client Age: **~51 years**
- Average Estimated Income: **~$171,300**
- Total Loans: **$4.4 billion**
- Total Deposits: **$3.8 billion**
- Loan-to-Deposit Ratio: **116%**

### Loan Portfolio Highlights
- Business Lending dominates → **$2.6 billion** (≈**59%** of total loans)
- Medium income band clients hold the largest loan volume
- Private Banking clients show significantly higher average deposits

### Deposit Behavior
- Private Bank segment contributes **~49%** of total deposits
- Highest deposit growth visible in recent join cohorts (**2020–2021**)

### Other Observations
- Most clients belong to **Jade** loyalty tier with **High** fee structure
- Majority nationality: **European**
- Average credit card balance per client: **~$3,180**
- Average risk weighting: **~2.25**

### How These Insights Were Uncovered
- **SQL layer**  
  Five targeted analytical queries were run on the MySQL `banking` table to quantify:
  - Nationality distribution & deposit contribution  
  - Loyalty tier concentration  
  - Credit card penetration  
  - Occupation-based loan drivers  
  - Join-year cohort trends  
  → Full script: [sql/key_business_queries.sql](./sql/key_business_queries.sql)

- **Python EDA**  
  In Jupyter Notebook:
  - Univariate countplots & histograms for BRId, Gender, IAid, Nationality, Occupation, Loyalty, Income Band
  - Binning of Estimated Income into Low/Med/High
  - Bivariate views (e.g., Nationality × BRId)
  - Identified skews: Private Banking dominance, advisor workload imbalance, European majority, Medium income prevalence  
  → Full notebook with code & plots: [Banking_Data_EDA.ipynb](./python/Banking_data_EDA.ipynb)

These SQL + Python steps directly informed which segments and metrics to emphasize in the Power BI dashboard (Private Banking strength, business lending concentration, loyalty gaps, recent client value, etc.).

## 🛠️ Tech Stack

| Layer              | Tools / Technologies                          |
|--------------------|-----------------------------------------------|
| Data Storage       | MySQL Server                                  |
| Data Extraction    | mysql-connector-python                        |
| Analysis / EDA     | Python · pandas · numpy · matplotlib · seaborn |
| Data Modeling      | Power BI (relationships, star schema)         |
| Visualization      | Power BI Desktop (DAX measures, slicers, bookmarks) |
| Source Format      | Excel → CSV → SQL                             |

## Connect With Me
LinkedIn: http://linkedin.com/in/ranadheer-reddy-73b67a241
