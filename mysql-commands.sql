SELECT
 CONCAT(author_fname, ' ', author_lname) 
 AS 'Full Name ' FROM books;

 SELECT 
    CONCAT_WS('-' , author_fname, author_lname)
 AS 'Full Name ' FROM books;