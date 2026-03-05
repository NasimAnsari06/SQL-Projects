-- Q1 Retrieve the total number of orders placed
SELECT COUNT(order_id) AS total_orders
FROM orders;


-- Q2 Calculate the total revenue generated from pizza sales
SELECT SUM(order_details.quantity * pizzas.price) AS total_sales
FROM order_details
JOIN pizzas
ON pizzas.pizza_id = order_details.pizza_id;


-- Q3 Identify the highest-priced pizza
SELECT pizza_types.name, pizzas.price
FROM pizza_types
JOIN pizzas
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;


-- Q4 Identify the most common pizza size ordered
SELECT pizzas.size,
COUNT(order_details.order_details_id) AS order_count
FROM pizzas
JOIN order_details
ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC;


-- Q5 List the top 5 most ordered pizza types along with their quantities
SELECT pizza_types.name,
SUM(order_details.quantity) AS total_quantity
FROM order_details
JOIN pizzas
ON order_details.pizza_id = pizzas.pizza_id
JOIN pizza_types
ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY pizza_types.name
ORDER BY total_quantity DESC
LIMIT 5;


-- Q6 Find the total quantity of each pizza category ordered
SELECT pizza_types.category,
SUM(order_details.quantity) AS total_quantity
FROM order_details
JOIN pizzas
ON order_details.pizza_id = pizzas.pizza_id
JOIN pizza_types
ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY pizza_types.category
ORDER BY total_quantity DESC;


-- Q7 Determine the distribution of orders by hour of the day
SELECT HOUR(time) AS order_hour,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY order_hour
ORDER BY order_hour;


-- Q8 Find the category-wise distribution of pizzas
SELECT pizza_types.category,
COUNT(pizzas.pizza_id) AS total_pizzas
FROM pizzas
JOIN pizza_types
ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY pizza_types.category
ORDER BY total_pizzas DESC;


-- Q9 Calculate the average number of pizzas ordered per day
SELECT AVG(total_pizzas_per_day) AS avg_pizzas_per_day
FROM (
    SELECT orders.date,
    SUM(order_details.quantity) AS total_pizzas_per_day
    FROM orders
    JOIN order_details
    ON orders.order_id = order_details.order_id
    GROUP BY orders.date
) AS daily_orders;


-- Q10 Determine the top 3 most ordered pizza types based on revenue
SELECT pizza_types.name,
SUM(order_details.quantity * pizzas.price) AS revenue
FROM order_details
JOIN pizzas
ON order_details.pizza_id = pizzas.pizza_id
JOIN pizza_types
ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY pizza_types.name
ORDER BY revenue DESC
LIMIT 3;