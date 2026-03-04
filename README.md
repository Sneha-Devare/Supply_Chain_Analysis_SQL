# 📦 **Supply Chain Analysis (SQL Project)**

### 📌 Project Overview

This project analyzes **supply chain stock-out problems using SQL**.  
A retail company operating multiple warehouses has been facing frequent product shortages, leading to **lost sales, delayed deliveries, and customer dissatisfaction**.

The aim of this project is to perform **data-driven analysis using SQL** to identify when and why stock-outs occur and to generate insights that improve **inventory management and supply chain efficiency**.

The analysis focuses on:

- **Products frequently going out of stock**
- **Warehouses experiencing the highest demand pressure**
- **Supplier delivery delays**
- **Demand trends and inventory movement**

This project demonstrates strong skills in **SQL querying, data analysis, and business insight generation**.

---

## 🎯 Objectives

The main goals of this project are:

- Identify **when and where stock-outs occur**
- Detect **products with the highest stock-out frequency**
- Analyze **supplier delays affecting inventory availability**
- Evaluate **warehouse performance and efficiency**
- Calculate **important supply chain KPIs**
- Provide **data-driven recommendations to improve inventory planning**

---

## 🗂 Database Schema

The project uses a **relational database structure** with the following tables.

### 1. Products

Stores information about each product.

- `product_id`
- `product_name`
- `category`
- `unit_price`

### 2. Warehouses

Stores warehouse location details.

- `warehouse_id`
- `warehouse_location`

### 3. Inventory

Tracks daily stock movement for each product in each warehouse.

- `inventory_id`
- `product_id`
- `warehouse_id`
- `date`
- `opening_stock`
- `quantity_received`
- `quantity_sold`
- `closing_stock`

### 4. Suppliers

Stores supplier information and delivery performance.

- `supplier_id`
- `supplier_name`
- `on_time_delivery_rate`

### 5. Purchase Orders

Tracks procurement orders from suppliers.

- `order_id`
- `product_id`
- `supplier_id`
- `order_date`
- `expected_delivery_date`
- `actual_delivery_date`
- `order_quantity`
- `unit_cost`

---

## 📊 Key Performance Indicators (KPIs)

This project calculates several important **inventory and supply chain metrics**.

### Inventory KPIs

- **Stock-out Frequency**
- **Stock-out Duration**
- **Average Closing Stock**
- **Inventory Turnover Ratio**
- **Reorder Point Breaches**

## Supplier KPIs

- **Supplier On-Time Delivery Rate**
- **Average Delivery Delay**
- **Supplier Lead Time Variability**
- **Supplier Impact on Stock-Out Incidents**

### Warehouse KPIs

- **Warehouse Demand Pressure Index**
- **Stock Availability Percentage**
- **Warehouse Throughput**

### Product & Category KPIs

- **Fast-moving vs Slow-moving products**
- **Category revenue contribution**
- **Product profitability**
- **Demand stability score**

---

## 🔍 SQL Analysis Performed

The project includes **150+ analytical SQL queries** to study supply chain performance.

#### Stock-Out Analysis

- Identify dates when products went out of stock
- Find products with the highest stock-out frequency
- Detect continuous stock-out streaks
- Identify warehouses with the most stock-out events

#### Inventory Analysis

- Calculate inventory turnover ratio
- Detect unusual demand spikes
- Identify inventory discrepancies
- Analyze stock movement trends

#### Warehouse Performance

- Rank warehouses by sales volume
- Detect underperforming warehouses
- Analyze warehouse demand pressure

#### Supplier Performance

- Measure supplier delivery delays
- Identify suppliers causing stock shortages
- Evaluate supplier reliability

#### Demand Analysis

- Identify top-selling products
- Detect seasonal demand patterns
- Forecast demand using SQL window functions

---

## 🛠 Technologies Used

- **SQL**
- **Relational Database Design**
- **Joins**
- **Aggregations**
- **Window Functions**
- **CTEs (Common Table Expressions)**

Optional tools for visualization:

- **Power BI**
- **Tableau**
- **Excel**

---

## 📈 Key Insights

This analysis helps identify:

- Products that frequently run out of stock
- Warehouses facing high demand pressure
- Suppliers responsible for delivery delays
- Demand trends affecting inventory levels

These insights help businesses **reduce stock-outs, improve supplier coordination, and optimize inventory planning**.

---

## 📁 Project Files

This repository contains:

- **Database schema**
- **SQL analysis queries**
- **Supply chain dataset**
- **Business insights report**
- **Optional dashboard (Power BI / Tableau)**

---

⭐ This project demonstrates how **SQL and data analysis can be used to solve real-world supply chain problems and improve inventory management.**
