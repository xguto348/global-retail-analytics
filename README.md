# 🌍 Global Retail Analytics

🎥 **Watch the Demo (2 min walkthrough):**  
👉 x

---

## 📌 Overview

This project demonstrates an end-to-end analytics solution built using a modern data stack, combining **Snowflake**, **dbt**, and **Power BI**.

The goal is to analyze global retail performance by exploring revenue trends, regional contributions, and country-level insights, enabling data-driven decision making.

---

## 🏗️ Architecture

This project follows a **Medallion Architecture (Bronze → Silver → Gold)**:

- **Snowflake** → Data warehouse for storage and processing  
- **dbt (Data Build Tool)** → Data transformation and modeling  
- **Power BI** → Data visualization and business insights  

### Data Flow:
Raw Data → Snowflake (Bronze)
→ dbt Transformations (Silver & Gold)
→ Power BI Dashboard


---

## 🧱 Data Modeling

The data model was designed using a **star schema approach**:

- **Fact Table**
  - `fct_sales` → transactional data (revenue, quantity, orders)

Key transformations include:

- Data cleaning and standardization
- Time intelligence enhancements (Year, Month, YoY calculations)
- Business-ready aggregations for analytics

---

## 📊 Dashboard Overview

The Power BI dashboard focuses on delivering clear and actionable insights:

### Key Features:

- **KPI Cards**
  - Total Revenue
  - Orders
  - Quantity
  - Year-over-Year (YoY) growth indicators

- **Time Analysis**
  - Revenue trend over time
  - Growth indicators embedded in visuals

- **Regional Analysis**
  - Revenue distribution by region
  - Comparative performance across markets

- **Country-Level Insights**
  - Revenue breakdown by country
  - Growth indicators and ranking
  - Visual enhancements (flags, conditional formatting)

---

## 📸 Dashboard Preview

### Overview
xx

### Tooltip

### Filters

---

## 📈 Key Insights

- Revenue shows a **slight decline of -0.7% YoY**, indicating a recent slowdown in performance  
- Certain regions contribute disproportionately to total revenue, highlighting key markets  
- Country-level analysis reveals performance variability, with clear top and underperforming regions  
- Partial data for the latest year was handled carefully to avoid misleading comparisons  

---

## ⚙️ Technologies Used

- **Snowflake** → Cloud Data Warehouse  
- **dbt** → Data Transformation & Modeling  
- **Power BI** → Data Visualization  
- **SQL** → Data manipulation and querying  

---

## 🎯 What This Project Demonstrates

- End-to-end analytics pipeline design  
- Data modeling using best practices (star schema)  
- Implementation of time intelligence (YoY, trends)  
- Data visualization focused on business storytelling  
- Ability to translate data into actionable insights  
