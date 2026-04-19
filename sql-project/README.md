# SQL Analysis – Product, Sales & Region

This SQL project analyzes a combined dataset containing product, sales, and regional information.  
The goal is to perform data cleaning, create calculated fields, and generate business‑driven insights using SQL.

---

## 🗂 Table Used

Since the dataset was originally prepared in Excel, all information is stored in **one combined table**:

- `sales_data` — contains product details, customer info, region, dates, pricing, discounts, and sales metrics. 

---

## 🧱 SQL Work Performed

- Created a SQL table structure based on the Excel dataset  
- Imported cleaned Excel data into SQL  
- Performed data type corrections  
- Added calculated fields (e.g., profit margin)  
- Created a view for simplified analysis  
- Wrote business‑focused analytical queries:
  - Top‑selling products  
  - Monthly sales trends  
  - KPI calculations
  - Monthly profit trends
  - Top 5 Salesperson
  - Revenue by region  
  - Sales by customer type  

---

## 🏗️ Table Creation

```sql
CREATE TABLE sales_data (
    OrderID INT,
    OrderDate DATE,
    DeliveryDate DATE,
    Date DATE,
    Product VARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    Discount DECIMAL(5,2),
    TotalPrice DECIMAL(10,2),
    Promotion VARCHAR(50),
    Returned VARCHAR(10),
    CustomerName VARCHAR(100),
    CustomerType VARCHAR(50),
    PaymentMethod VARCHAR(50),
    Region VARCHAR(50),
    RegionManager VARCHAR(100),
    StoreLocation VARCHAR(100),
    SalesPerson VARCHAR(100),
    ShippingCost DECIMAL(10,2)
);
