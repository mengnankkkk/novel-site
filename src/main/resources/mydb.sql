CREATE DATABASE novel_site;

USE novel_site;

CREATE TABLE users (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       username VARCHAR(50) NOT NULL,
                       password VARCHAR(100) NOT NULL,
                       email VARCHAR(100)
);

CREATE TABLE books (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       title VARCHAR(100) NOT NULL,
                       author VARCHAR(100) NOT NULL,
                       description TEXT
);

CREATE TABLE reviews (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         book_id INT NOT NULL,
                         user_id INT NOT NULL,
                         rating INT CHECK (rating >= 1 AND rating <= 5),
                         comment TEXT,
                         created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                         FOREIGN KEY (book_id) REFERENCES books(id),
                         FOREIGN KEY (user_id) REFERENCES users(id)
);
