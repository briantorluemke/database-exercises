# CREATE DATABASE join_test_db;
USE join_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null),
  ('brian', 'brian@example.com', NULL),
  ('jake', 'jake@example.com', 2),
  ('nestor', 'nestor@example.com', 2),
  ('john', 'john@example.com', 2);

SELECT *
FROM roles
  JOIN users u ON roles.id = u.role_id;

SELECT *
FROM roles
  LEFT JOIN users u ON roles.id = u.role_id;

SELECT *
FROM roles
  RIGHT JOIN users u ON roles.id = u.role_id;

SELECT u.role_id, roles.name, COUNT(*)
FROM roles
  LEFT JOIN users u ON roles.id = u.role_id
GROUP BY u.role_id, roles.name;