USE store_rating_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    address VARCHAR(400),
    role ENUM('ADMIN', 'USER', 'OWNER') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
SHOW TABLES;
CREATE TABLE stores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    address VARCHAR(400),
    owner_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (owner_id) REFERENCES users(id)
);
SHOW TABLES;
CREATE TABLE ratings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    store_id INT NOT NULL,
    rating INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (store_id) REFERENCES stores(id)
);

SHOW TABLES;

SELECT USER(), CURRENT_USER();

SELECT * FROM users;

CREATE TABLE stores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255),
  owner_email VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SHOW TABLES;

INSERT INTO stores
(name, address, owner_email)
VALUES
(
  'Reliance Fresh',
  'Mumbai',
  'owner@test.com'
);
SELECT * FROM stores;

DESCRIBE stores;

INSERT INTO stores
(name, email, address, owner_id)
VALUES
(
  'Reliance Fresh',
  'store@test.com',
  'Mumbai',
  1
);

CREATE TABLE ratings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    store_id INT NOT NULL,
    rating INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SHOW TABLES;

DESCRIBE ratings;

INSERT INTO ratings
(user_id, store_id, rating)
VALUES
(
  2,
  1,
  5
);

SELECT * FROM ratings;
INSERT INTO ratings
(user_id, store_id, rating)
VALUES
(1, 1, 5);

SELECT * FROM users;

SELECT id, name, email, role
FROM users;




