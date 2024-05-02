USE library_management;
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT NOT NULL,
    isbn VARCHAR(20) NOT NULL,
    genre VARCHAR(50),
    publication_year INT,
    available_copies INT DEFAULT 0,
    total_copies INT DEFAULT 0,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);