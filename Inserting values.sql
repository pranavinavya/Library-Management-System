USE library_management;
INSERT INTO authors (author_name) VALUES
    ('J.K. Rowling'),
    ('George Orwell'),
    ('Harper Lee');
INSERT INTO books (title, author_id, isbn, genre, publication_year, available_copies, total_copies) VALUES
    ('Harry Potter and the Sorcerer''s Stone', 1, '9780590353427', 'Fantasy', 1997, 5, 10),
    ('1984', 2, '9780451524935', 'Dystopian Fiction', 1949, 3, 5),
    ('To Kill a Mockingbird', 3, '9780061120084', 'Fiction', 1960, 7, 8);
INSERT INTO borrowers (full_name, email, phone, address) VALUES
    ('Alice Johnson', 'alice@example.com', '555-1234', '123 Elm St'),
    ('Bob Smith', 'bob@example.com', '555-5678', '456 Oak Ave');
INSERT INTO transactions (book_id, borrower_id, transaction_type, transaction_date, due_date) VALUES
    (1, 1, 'checkout', '2024-04-01', '2024-04-15'),
    (2, 2, 'checkout', '2024-04-05', '2024-04-19'),
    (3, 1, 'checkout', '2024-04-10', '2024-04-24'),
    (1, 1, 'return', '2024-04-16', '2024-04-24');
SELECT * FROM authors;

SELECT * FROM books;

SELECT * FROM borrowers;

SELECT * FROM transactions;