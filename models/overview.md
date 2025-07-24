{% docs __overview__ %}

# Greenweez - dbt Project Overview 🌿

> **Disclaimer: This is a fictional dbt project created for learning purposes and is based on the real company Greenweeze. The data and processes described in this project are entirely hypothetical and do not reflect actual operations or data from Greenweeze. This project is intended solely for educational and training purposes**.

Welcome to the dbt documentation for Greenweez! This project focuses on the sales, products, and shipment data that power the financial and operational reporting for Greenweez, an e-commerce company that specializes in eco-friendly products. The goal of this project is to provide data models that help the finance team make informed decisions, optimize performance, and track key metrics related to sales and shipping operations.

## Project Objectives 🎯

The Greenweez dbt project has been designed to:

- Enable accurate financial reporting and analysis 💵
- Provide insights into product sales and customer behavior 📊
- Track shipping efficiency and costs 🚚

## Data Model Structure 🏗️

The dbt project is structured into three primary layers: **Staging**, **Intermediate**, and **Mart**. These layers are designed to progressively transform and enrich raw data to ensure it's ready for analytical purposes.

### 1. Staging Models 🧹

The **staging models** focus on preparing raw data for further analysis. They clean, filter, and format the raw data from source systems, ensuring consistency and correctness. This is the foundational layer, where data from the sales, products, and shipment systems is made ready for deeper transformation.

Key Staging Models:

- `stg_raw__sales` 💳: Cleans up raw sales data, ensuring consistency and correct date formats.
- `stg_raw__products` 🛍️: Transforms raw product data, including product names, categories, and pricing.
- `stg_raw__ship` 📦: Filters shipment data to create accurate records of delivery dates, shipping methods, and costs.

### 2. Intermediate Models 🔄

The **intermediate models** build upon the staging models, adding business logic and transforming data into useful entities that can be leveraged for reporting. These models combine and aggregate data to calculate important metrics like total sales, average order value, and shipping costs.

Key Intermediate Models:

- `int_sales_margin` 💸: Joins `stg_raw__sales` and `stg_raw__products` and creates the margin KPI.
- `int_orders_margin` 📈: Aggregates `int_sales_margin` by orders_id and date.
- `int_orders_operational` 🚚: Joins `int_orders_margin` and `stg_raw__ship` and creates the operational_margin KPI.

### 3. Mart Models 🏙️

The **mart models** are the final layer of transformation, optimized for reporting and analysis. These models provide easy-to-query datasets that the finance team can use to create dashboards, financial reports, and strategic insights.

Key Mart Models:

- `mart_finance_days` 📊: Aggregates key financial and operational metrics at a daily level, providing insights into the performance of orders

## Data Sources 📚

The primary data sources for this dbt project include:

- **Sales Data**: Sourced from Greenweez's e-commerce platform, detailing every customer transaction with a granularity in the product level.
- **Product Data**: Sourced from the Greenweez product management system, capturing product-related attributes (e.g., product id and price).
- **Shipment Data**: Sourced from Greenweez's logistics partners, including shipping costs and fees.

## How to Use This Documentation 📖

This dbt documentation provides an overview of the project's data models and their transformation process. The finance team can refer to the mart models for comprehensive reports, while the intermediate and staging models allow for deeper insights into raw and aggregated data.

### Key Contacts 📇

- **Project Owner**: [Alex Viana](https://github.com/vianaxabreu) (Data Engineering Team)
- **About:** [Greenweez](https://www.greenweez.com/)
- **Check this out:** [GitHub Repo](https://github.com/vianaxabreu/dbt_day02.git)

{% enddocs %}
