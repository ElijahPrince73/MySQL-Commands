-- SELECT
--  CONCAT(author_fname, ' ', author_lname) 
--  AS 'Full Name ' FROM books;

--  SELECT 
--     CONCAT_WS('-' , author_fname, author_lname)
--  AS 'Full Name ' FROM books;

-- SELECT SUBSTRING(title, 1, 10)

-- SELECT CONCAT(SUBSTRING(title, 1,10), ' ...') AS 'Short Title' FROM books;

-- SELECT REPLACE(title, 'e', 3) FROM books;

-- SELECT REVERSE(author_fname) FROM books;

-- SELECT CONCAT('woof', REVERSE('woof'));

-- SELECT author_lname, CHAR_LENGTH( author_lname) FROM books;

-- SELECT UPPER(title)
-- FROM books;

-- SELECT UPPER(REVERSE("Why does my cat look at me with such hatred?"));

-- SELECT
--     REPLACE
--   (
--   CONCAT('I', ' ', 'like', ' ', 'cats'),
--   ' ',
--   '-'
--   );

-- SELECT REPLACE(title, ' ', '->') from books;

-- SELECT author_fname AS 'FORWARDS', REVERSE(author_lname) AS 'BACKWARDS' FROM books;

-- SELECT UPPER(CONCAT
-- (author_fname, ' ',author_lname)) AS 'Full Name in caps' FROM books;

-- SELECT CONCAT(title, ' was released in ', released_year) FROM books;

-- SELECT title, CHAR_LENGTH(Title) FROM books;

-- SELECT CONCAT(SUBSTRING(title, 1, 10), '...') AS 'Short Title', CONCAT(author_fname,',' ,author_lname) AS 'Author', CONCAT(stock_quantity, ' in stock') from books;

-- SELECT DISTINCT author_lname from books;
-- SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books

-- SELECT author_lname FROM books ORDER BY author_lname
-- SELECT author_lname FROM books ORDER BY author_lname DESC

-- SELECT title, pages FROM books ORDER BY released_year;

-- SELECT title, released_year FROM books ORDER BY released_year LIMIT 5;

-- SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';

-- SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';



-- SELECT title from books where title LIKE '%stories%';

-- SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

-- SELECT CONCAT(title, ' - ',released_year)

-- SELECT title, author_lname FROM books WHERE author_lname LIKE "% %";

SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity LIMIT 3;