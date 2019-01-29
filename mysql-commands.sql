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