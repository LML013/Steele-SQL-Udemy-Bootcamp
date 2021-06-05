SELECT COUNT(*) FROM books;

SELECT released_year, COUNT(*) FROM books GROUP BY (released_year) ORDER BY released_year;

SELECT SUM(stock_quantity) FROM books;

SELECT author_fname, author_lname, AVG(released_year) FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname) AS 'Full Name' FROM books ORDER BY pages DESC LIMIT 1;

SELECT released_year AS 'year', COUNT(*), AVG(pages) FROM books GROUP BY released_year;