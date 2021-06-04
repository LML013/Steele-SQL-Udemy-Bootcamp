SELECT CONCAT(title, ' - ', released_year) AS 'summary' FROM books ORDER BY released_year DESC LIMIT 3;

SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity, title LIMIT 3;

SELECT title, author_lname FROM books ORDER BY author_lname, title;

SELECT UPPER(CONCAT('my favorite author is ', author_fname, ' ', author_lname, '!')) AS 'yell' FROM books ORDER BY author_lname;