-- CREATE TABLE customers(
--   id INT AUTO_INCREMENT PRIMARY KEY,
--   first_name VARCHAR(100),
--   last_name VARCHAR(100),
--   email VARCHAR(100)
-- );

-- CREATE TABLE orders(
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     order_date DATE,
--     amount DECIMAL(8,2),
--     customer_id INT,
--     FOREIGN KEY(customer_id) REFERENCES customers(id)
-- );

-- SELECT * FROM orders WHERE customer_id = (
--     SELECT id
-- FROM customers
-- WHERE last_name='George'
-- )

-- SELECT * FROM customers, orders WHERE customers.id = orders.customer_id

-- SELECT * FROM customers
-- JOIN orders
--     ON customers.id = orders.customer_id;

-- SELECT *
-- FROM customers
--     RIGHT JOIN orders
--     ON customers.id = orders.customer_id;

-- CREATE TABLE students(
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     firstName VARCHAR(200)
-- );

-- CREATE TABLE papers(
--     title VARCHAR(100),
--     grade VARCHAR(1),
--     student_id INT,
--     FOREIGN KEY(student_id) REFERENCES students(id)
-- );

-- INSERT INTO students
--     (firstName)
-- VALUES
--     ('Caleb'),
--     ('Samantha'),
--     ('Raj'),
--     ('Carlos'),
--     ('Lisa');

-- INSERT INTO papers
--     (student_id, title, grade )
-- VALUES
--     (1, 'My First Book Report', 'F'),
--     (1, 'My Second Book Report', 'C'),
--     (2, 'Russian Lit Through The Ages', 'A'),
--     (2, 'De Montaigne and The Art of The Essay', 'A'),
--     (4, 'Borges and Magical Realism', "B");
    
-- SELECT * FROM students 
--     LEFT JOIN papers
--         ON students.id = papers.student_id

SELECT firstName, IFNULL(title, 'missing'), IFNULL
(grade, 'F')
FROM students
    LEFT JOIN papers
    ON students.id = papers.student_id    