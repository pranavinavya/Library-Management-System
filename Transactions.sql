USE library_management;

DROP TABLE IF EXISTS transactions;

CREATE TABLE IF NOT EXISTS transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    borrower_id INT NOT NULL,
    transaction_type ENUM('checkout', 'return') NOT NULL,
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    due_date TIMESTAMP,
    return_date TIMESTAMP,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (borrower_id) REFERENCES borrowers(borrower_id)
);

INSERT INTO transactions (book_id, borrower_id, transaction_type, transaction_date, due_date, return_date) VALUES
    (1, 1, 'checkout', '2024-04-01', '2024-04-15', NULL),
    (2, 2, 'checkout', '2024-04-05', '2024-04-19', NULL),
    (3, 1, 'checkout', '2024-04-10', '2024-04-24', NULL),
    (1, 1, 'return', '2024-04-16', '2024-04-24', '2024-04-23');

SELECT * FROM transactions;
