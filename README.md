# Consumer360 – Retail Analytics Project

## 📌 Project Overview
**Consumer360** is an end-to-end retail analytics solution designed to help businesses **reduce customer churn**, **identify high-value customers**, and **increase revenue** using data-driven decision-making.

The project builds a **single source of truth for customers**, applies industry-standard **RFM segmentation**, performs **cohort analysis**, and uncovers **cross-selling opportunities** using Market Basket Analysis.

---

## 🎯 Business Objectives
- Identify **high-value customers (Whales)** and **churn-risk customers**
- Understand **customer retention behavior over time**
- Improve **product bundling and cross-sell strategies**
- Provide **actionable dashboards** for business stakeholders

---

## 🛠 Tech Stack
- **Database:** MySQL  
- **Backend / Analytics:** Python (pandas, sqlalchemy, mlxtend)  
- **Visualization:** Power BI  

---
Raw data from kaggle ; https://www.kaggle.com/datasets/thedevastator/retail-customer-segmentation-analysis-using-cust

## 🗂 Data Model
The project follows a **Star Schema** design for analytics efficiency.

### Fact Table
- raw_transactions (invoice_no, stock_id, product_name, quantity, price, customer_id, country, dates , time)

### Dimension Tables
- dim_Customer
- dim_product
- dim_dates

A **Single Customer View (SCV)** is created to consolidate all customer-level metrics.

---

## 📅 Project Breakdown

### 🔹 Week 1 – Data Engineering
**Focus:** Reliable analytics foundation

- Designed **Star Schema**
- Built **Fact & Dimension tables**
- Created **Single Customer View**
- Implemented **Cohort Analysis**
  - Cohort Month
  - Month Index
  - Active Customers by Month

📦 Deliverables:
- Cleaned relational data model
- Cohort table for retention analysis

---

### 🔹 Week 2 – Analytics Core
**Focus:** Customer intelligence & behavior analysis

- **RFM Segmentation**
  - Recency
  - Frequency
  - Monetary Value
- Customer Tier Classification
  - Champions
  - Loyal Customers
  - At-Risk
  - Hibernating
- **Market Basket Analysis**
  - Apriori algorithm
  - Association Rules (Support, Confidence, Lift)
- Statistical validation of customer segments

📦 Deliverables:
- RFM segment table
- Association rules dataset

---

### 🔹 Week 3 – Visualization
**Focus:** Business storytelling

- Executive KPIs (Revenue, Customers, Orders, AOV) 
- Customer segments & churn customers 
- Sales & country Analysis
- Market Basket Insights
- Cohort Retention Visualization

📦 Deliverables:
- Interactive **Power BI Dashboard**
- Business-ready insights for decision-makers

---

## 📊 Key Deliverables
- ✅ Executive KPIs (Revenue, Customers, Orders, AOV)  
- ✅ RFM Segments  
- ✅ Cohort Table (Month Index & Active Customers)  
- ✅ Market Basket & Association Rules  
- ✅ Power BI Executive Dashboard  

---

## 📈 Key Insights Generated
- Identification of **high-value and churn-risk customers**
- Retention trends across customer cohorts
- Product combinations frequently purchased together
- Geographic contribution to revenue and sales volume

---

## 🚀 Future Enhancements
- Predictive churn modeling
- Customer Lifetime Value (CLV) forecasting
- Automation using scheduled ETL pipelines
- Integration with real-time data sources

---

## 👤 Author
**Ashish Patel**  
B.Tech IT | Data Analytics Enthusiast  
Skills: SQL, Power BI, Python, Data Modeling, Customer Analytics
