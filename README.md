# SQL Database Setup for Orders Management

This project provides a basic SQL schema for an orders management system. It includes the creation of `customers`, `products`, and `orders` tables, and inserts sample data into each. The schema demonstrates relational database design using foreign keys and can be used for learning, testing, or as a foundation for larger applications.

---

## 📂 Tables Overview

### 🧑‍💼 `customers`

Stores customer information.

```sql
customer_id SERIAL PRIMARY KEY,
name VARCHAR(50),
email VARCHAR(100)
```

### 📦 `products`

Stores product details.

```sql
product_id SERIAL PRIMARY KEY,
name VARCHAR(50),
price DECIMAL(10, 2)
```

### 🧾 `orders`

Records purchases made by customers.

```sql
order_id SERIAL PRIMARY KEY,
customer_id INT REFERENCES customers(customer_id),
product_id INT REFERENCES products(product_id),
quantity INT,
order_date DATE
```

---

## 📋 Sample Data

### 👥 Customers

```sql
('Assad', 'assadkhurshid91@email.com'),
('sunny', 'sunny@email.com')
```

### 🛍️ Products

```sql
('T-shirt', 10.00),
('Mug', 5.00)
```

### 📑 Orders

```sql
(1, 1, 2, '2024-01-01'),  -- Assad bought 2 T-shirts
(2, 2, 1, '2024-01-02')   -- sunny bought 1 Mug
```

---

## 🛠️ How to Use

1. Connect to your PostgreSQL database.
2. Run the SQL script provided in `schema.sql`.
3. The script will:

   * Drop existing `orders`, `customers`, and `products` tables if they exist.
   * Create new tables with defined schemas.
   * Insert sample data into each table.

---

## 📎 File Structure

```
📦sql-orders-database/
 ┣ 📄 schema.sql     # SQL script with full setup
 ┗ 📄 README.md      # Project description and usage
```

---

## ✅ Requirements

* PostgreSQL (or any SQL-compatible database with minor adjustments)

---

## 💡 Use Cases

* Learning relational database design
* Creating prototypes for e-commerce platforms
* Practicing SQL queries with joins and filters

---

## 🧑‍💻 Author

Assad Khurshid


