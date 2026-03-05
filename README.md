# Pizza Sales Data Analysis using SQL

## Project Overview

This project analyzes pizza sales data using SQL to extract meaningful business insights.
The analysis focuses on order trends, revenue generation, popular pizza types, and customer ordering behavior.

The goal of this project is to demonstrate practical SQL skills used in Data Analysis and to build a portfolio project for Data Analyst roles.

---

## Dataset Description

The dataset consists of four relational tables:

### 1. Orders

Contains information about each order.

Columns:

* order_id
* date
* time

### 2. Order Details

Stores information about pizzas included in each order.

Columns:

* order_details_id
* order_id
* pizza_id
* quantity

### 3. Pizzas

Contains pizza size and price information.

Columns:

* pizza_id
* pizza_type_id
* size
* price

### 4. Pizza Types

Contains pizza names, categories, and ingredients.

Columns:

* pizza_type_id
* name
* category
* ingredients

---

## Business Questions Solved

The following SQL queries were used to analyze the dataset:

1. Retrieve the total number of orders placed.
2. Calculate the total revenue generated from pizza sales.
3. Identify the highest-priced pizza.
4. Identify the most common pizza size ordered.
5. List the top 5 most ordered pizza types along with their quantities.
6. Find the total quantity of each pizza category ordered.
7. Determine the distribution of orders by hour of the day.
8. Find the category-wise distribution of pizzas.
9. Calculate the average number of pizzas ordered per day.
10. Determine the top 3 most ordered pizza types based on revenue.

---

## Key Insights

The analysis of the pizza sales dataset revealed several important insights:

* A large number of orders were placed, indicating consistent customer demand.
* Total revenue generated from pizza sales highlights the overall performance of the business.
* Certain pizza types contribute significantly more revenue compared to others.
* The most commonly ordered pizza size provides insight into customer preferences.
* Some pizza categories are more popular than others in terms of order quantity.
* Peak ordering hours help identify when customer demand is highest.
* Average daily pizza orders provide a measure of daily sales performance.
* The top revenue-generating pizza types play a key role in overall business profitability.

These insights can help businesses understand customer behavior and optimize menu offerings, pricing strategies, and operational planning.

---

## Tools and Technologies

* SQL (MySQL)
* Relational Databases
* Data Analysis

---

## Project Structure

pizza-sales-sql-analysis

dataset

* orders.csv
* order_details.csv
* pizzas.csv
* pizza_types.csv

pizza_sales_analysis.sql
SQL_Queries_Pizza_Sales.pdf
README.md

---

## How to Run the Project

1. Import the dataset into MySQL.
2. Create the required tables.
3. Load the dataset into the tables.
4. Run the SQL queries provided in the `pizza_sales_analysis.sql` file.
5. Analyze the results to understand pizza sales trends and business insights.

---

## Project Purpose

This project was created to practice SQL for Data Analysis and build a portfolio project for Data Analyst and Data Science roles.

---

## Author

Nasimuddin Ansari |
B.Tech AI & DS Student |
Aspiring Data Scientist

