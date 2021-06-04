SELECT author_fname, author_lname, MIN(released_year) FROM books GROUP BY author_lname, author_fname;

SELECT author_fname, author_lname, MAX(pages) FROM books GROUP BY author_lname, author_fname;

