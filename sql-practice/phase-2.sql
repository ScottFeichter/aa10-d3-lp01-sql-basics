DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS coffe_orders;

CREATE TABLE customers (
  customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
  customer_name VARCHAR(40) NOT NULL,
  customer_email VARCHAR(255) UNIQUE,
  customer_phone INTEGER(10) UNIQUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  customer_points INTEGER NOT NULL DEFAULT 5
);

CREATE TABLE coffe_orders (
  id INTEGER PRIMARY KEY,
  is_redeemed BOOLEAN DEFAULT 0,
  ordered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  purchase_points INTEGER
);
