CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (NAME) VALUES ('admin');
INSERT INTO roles (NAME) VALUES ('author');
INSERT INTO roles (NAME) VALUES ('reviewer');
INSERT INTO roles (NAME) VALUES ('commenter');

INSERT INTO users (NAME, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', NULL),
('mike', 'mike@example.com', NULL);

SELECT * FROM roles;
SELECT * FROM users;

INSERT INTO users (NAME, email, role_id)
VALUES 
('stephanie', 'stephanie@example.com', NULL),
('carter', 'carter@example.com', 2),
('sarah', 'sarah@example.com', 2),
('nick', 'nick@example.com', 2);

SELECT * FROM users;

SELECT users.name AS user_name, roles.name AS user_title
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS user_title
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS user_title
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

SELECT count(users.name), roles.name AS user_title
FROM users
LEFT JOIN roles ON users.role_id = roles.id
GROUP BY user_title;