SELECT
  title,
  author_lname,
  CASE
    WHEN title LIKE '%stories' THEN 'Short Stories'
    WHEN title LIKE 'Just Kids'
    OR title LIKE 'A Heartbreaking Work%' THEN 'Memoir'
    ELSE 'Novel'
  END AS TYPE
FROM
  books;
  
  SELECT title, author_lname, CASE WHEN COUNT(*) = 1 THEN CONCAT(COUNT(*), ' book') ELSE CONCAT(COUNT(*), ' books') END AS 'COUNT' FROM books GROUP BY author_lname, author_fname;