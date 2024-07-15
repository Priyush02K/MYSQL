CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(255)
);
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    publication_year INT
);
CREATE TABLE book_authors (
    book_id INT,
    author_id INT,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

SELECT *
FROM books
LEFT JOIN book_authors USING (book_id);

SELECT authors.author_name, COUNT(books.book_id) as book_count
FROM authors
LEFT JOIN book_authors ON authors.author_id = book_authors.author_id
LEFT JOIN books ON book_authors.book_id = books.book_id
GROUP BY authors.author_name;