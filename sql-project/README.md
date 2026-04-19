# SQL Analysis – Product, Sales & Region

This SQL project analyzes a combined dataset containing product, sales, and regional information.  
The goal is to perform data cleaning, create calculated fields, and generate business‑driven insights using SQL.

---

## 🗂 Table Used

Since the dataset was originally prepared in Excel, all information is stored in **one combined table**:

- `sales_data` — contains Product details, Region, Order date, Saleperson, Customer Type, Sales amount, and Profit.

---

## 🧱 SQL Work Performed

- Created a SQL table structure based on the Excel dataset  
- Imported cleaned Excel data into SQL  
- Performed data type corrections  
- Added calculated fields (e.g., profit margin)  
- Created a view for simplified analysis  
- Wrote business‑focused analytical queries:
  - Top‑selling products  
  - Profit by region  
  - Monthly sales trends  
  - KPI calculations
  - Monthly profit trends
  - Top 5 Salesperson

---

## 🏗️ Table Creation

```sql
CREATE TABLE sales_data (
    order_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    region VARCHAR(50),
    order_date DATE,
    sales_amount DECIMAL(10,2),
    profit DECIMAL(10,2)
);
