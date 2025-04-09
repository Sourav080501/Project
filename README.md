# E-commerce Transactions Analysis Using SQL

## 🧠 Objective
To analyze customer orders and product sales data from an e-commerce platform using SQL, and extract valuable business insights.

## 📁 Dataset Tables
- `customers`: Customer profiles
- `orders`: Order summaries
- `order_items`: Items in each order
- `products`: Product details & categories

## 🔍 Key Insights
- Revenue by month and product category
- Top-selling products
- Average order value
- Customer repeat rate
- Revenue by category

## 💡 Tools Used
- SQL (MySQL)
- GitHub
- Excel (for mock data)

## 📊 Sample Queries
```sql
SELECT category, SUM(price * quantity) AS revenue
FROM order_items
JOIN products USING(product_id)
GROUP BY category;
