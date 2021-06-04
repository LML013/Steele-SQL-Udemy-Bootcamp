CREATE TABLE students (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100),
    PRIMARY KEY (id)
);

INSERT INTO students (first_name) VALUES 
('Caleb'), 
('Samantha'), 
('Raj'), 
('Carlos'), 
('Lisa');

CREATE TABLE papers(
    title VARCHAR(100),
    grade INT,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);


INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

-- Queries
SELECT first_name, title, grade 
FROM students
    JOIN papers ON students.id = papers.student_id
ORDER BY grade DESC;

SELECT 
    first_name, title, grade
FROM students
    LEFT JOIN papers ON students.id = papers.student_id;


SELECT 
    first_name, 
    IFNULL(title, 'MISSING') AS 'title', 
    IFNULL(grade, 0) AS 'grade' 
FROM students
    LEFT JOIN papers ON students.id = papers.student_id
;

SELECT 
    first_name,
    IFNULL(AVG(grade), 0) AS 'average', 
    IF(AVG(grade) >= 75, 'PASSING', 'FAILING') AS 'passing_status'
FROM students
    LEFT JOIN papers ON students.id = papers.student_id
GROUP BY id
ORDER BY AVG(grade) DESC
;