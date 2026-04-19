# SQL Analysis – Product, Sales & Region

This SQL project analyzes a combined transactional dataset containing product, customer, regional, and sales information.  
The goal is to clean the data, create calculated fields, and generate business insights using SQL.

---

## 📌 Project Overview

This project uses a single Excel dataset imported into SQL for analysis.  
The dataset includes product details, customer information, pricing, discounts, delivery dates, and regional performance.  
The objective is to perform data preparation and answer key business questions using SQL queries.

---

## 🗂 Table Description

All data is stored in **one combined table** named `sales_data`.

### **Columns included:**

- Date  
- Region  
- Product  
- Quantity  
- UnitPrice  
- StoreLocation  
- CustomerType  
- Discount  
- SalePerson  
- TotalPrice  
- PaymentMethod  
- Promotion  
- Returned  
- OrderID  
- CustomerName  
- ShippingCost  
- OrderDate  
- DeliveryDate  
- RegionManager  

This structure allows analysis across products, customers, regions, pricing, and delivery performance.

---

## 🔧 Transformations Explained

After importing the Excel file into SQL, the following transformations were performed:

- Converted date fields (`order_date`, `delivery_date`, `date`) into proper DATE format  
- Added calculated fields:
  - **delivery_days** → difference between order and delivery dates  
  - **discounted_price** → price after applying discount  
- Standardized numeric fields (quantity, unitprice, shippingcost)  
- Created a clean view (`sales_clean`) to simplify analysis queries  

These steps ensure the dataset is ready for accurate business analysis.

---

## ❓ Business Questions Answered

The SQL analysis focuses on answering key business questions such as:

- Which products generate the highest revenue?  
- Which regions perform best in total sales?  
- What is the monthly sales trend?  
- How do different customer types contribute to revenue?   

---

## 📝 Sample Queries 

### **1. Top 5 products by revenue**
```sql
SELECT product, SUM(totalprice) AS total_revenue
FROM sales_data
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 5;
```

### **2. Monthly sales trend**
```sql
SELECT DATE_TRUNC('month', order_date) AS month,
       SUM(totalprice) AS total_sales
FROM sales_data
GROUP BY month
ORDER BY month;
```

---

****
