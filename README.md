
# MySQL-Commands and notes
## Creating Databases and Tables
#### Show databases
```Javascript 
 SHOW DATABASES; 
 ```

#### Create Database
``` Javascript 
CREATE DATABASE <NAME_OF_DB>;
 ```

#### Delete Database
```Javascript  
DROP DATABASE <NAME_OF_DB>;
```

#### Work with or use database
```Javascript  
 USE <DB_NAME> 
```

#### See what database we are currently working with
```Javascript  
SELECT database() 
```

#### Create Table
```Javascript
 CREATE TABLE <TABLE_NAME>
 ( 
     column_name data_type,
     column_name data_type
 );
 ```
 EX:
```Javascript
 CREATE TABLE cats
 ( 
     name VARCHAR(100)
     age INT
 );
 ```

#### Show Tables
``` Javascript 
SHOW TABLES 
 ```

#### Show Columns
```Javascript 
 SHOW COLUMNS FROM <TABLE_NAME> 
 ```

or 

``` Javascript 
DESC <TABLE_NAME> 
 ```

#### Delete Tables
```Javascript 
 DROP TABLE <TABLE_NAME 
 ```

## Inserting Data (and a couple of other things)
#### Inserting Data into a Table
```Javascript
 INSERT INTO <TABLE_NAME>(name, age);
 VALUES ('JETSON', 7)
 ```

 order dosn't matter but we should keep the same format

#### Reading Table Data
``` SELECT * FROM <TABLE_NAME> ```

#### Multiple inserts
```Javascript
INSERT INTO table_name 
            (column_name, column_name) 
VALUES      (value, value), 
            (value, value), 
            (value, value);
 ```

#### To see Warnings
``` SHOW WARNINGS```

#### NULL and NOT_NULL

just add NOT_NULL WHEN CREATING A TABLE
```Javascript
 CREATE TABLE <TABLE_NAME>
 ( 
     column_name data_type NOT NULL,
     column_name data_type NOT NULL
 );
 ```

#### Setting Default Values

Just add DEFAULT 'DEFAULT_VALUE'
```Javascript
 CREATE TABLE <TABLE_NAME>
 ( 
     name VARCHAR(100) DEFAULT 'DEFAULT_VALUE',
     age INT DEFAULT 99
 );
 ```

 any one of the 2 above can be combined

```Javascript
 CREATE TABLE <TABLE_NAME>
 ( 
     name VARCHAR(100) NOT NULL DEFAULT 'DEFAULT_VALUE',
     age INT NOT NULL DEFAULT 99
 );
 ```

 #### Primary Key and Auto Increment
 When we need an ID for each cat or user
 ```Javascript
 CREATE TABLE unique_cats
  (
    cat_id INT NOT NULL,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
  );
 ```
Will automatically increment the ID

 ```Javascript
CREATE TABLE unique_cats2 (
    cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);

 ```

 ## CRUD COMMANDS

 #### Using SELECT To READ
 To read an entire table and its columns we use the ``` SELECT ``` command

 ```Javascript
SELECT FROM <TABLE_NAME>
 ```

But to get only certain colums we use
``` Javascript
SELECT <COLUMN_NAME> FROM <TABLE_NAME>;
 ```

 We can even get more than 1 column as well
``` Javascript
SELECT <COLUMN_NAME>, <COLUMN_NAME> FROM <TABLE_NAME>;
 ```

EX: 
``` Javascript
SELECT name, age FROM cats;
 ```

and we would only get the 2 colums back with all its values

****

#### Using WHERE
Using ```WHERE``` allows to find something specifc

``` Javascript
SELECT <COLUMN_NAME> FROM <TABLE_NAME> WHERE <COLUMN_NAME> = 'CONDITION' ;
 ```

 EX: 
 ``` Javascript
SELECT * FROM cats WHERE age=4;

SELECT * FROM cats WHERE name='Egg';
 ```

 #### Reading data with aliases

We can change the way we read the data by creating aliases or diplaying one thing as something else

 ``` Javascript
SELECT <COLUMN_NAME> AS <NAME_WE_WANT_SEE> FROM <TABLE_NAME;
 ```

 EX:
 ```Javascript
 SELECT cat_id AS id FROM cats;
 ```
#### The UPDATE Command

Key commands to update data:
 ```Javascript
UPDATE,
SET,
WHERE
 ```

 A Good Rule to Follow
 try ``` SELECT```ing BEFORE UPDATING
 so we can target exactly what we want to change

 ``` Javascript
UPDATE <TABLE_NAME> SET <COLUMN_NAME>='WHATEVER WE WANT'
WHERE <COLUMN_NAME>='WHAT WE ARE CHANGING';
 ```

 EX: 
  ``` Javascript
UPDATE cats SET breed='Shorthair'
WHERE breed='Tabby';
 ```

 To get more specific
  ``` Javascript
UPDATE cats SET age=14
WHERE name='Misty';
 ```

 #### DELETING
 ```Javascript
 DELETE FROM <TABLE_NAME> WHERE <COLUMN_NAME>='WHATEVER WE WANT DELETE FROM THE COLUMN';
 ```

EX:
  ```Javascript
 DELETE FROM cats WHERE <COLUMN_NAME>='Egg';
 ```

Using this command WILL DELETE ALL DATA IN THE TABLE

``` Javascript
DELETE FROM <TABLE_NAME>;
 ```
 Note that there is NO case sensitiviy

## The World of String Functions
#### Working with concat

Using concat combines columns OR strings
``` Javascript
SELECT 
    CONCAT(<COLUMN_NAME>, <COLUMN_NAME>)
FROM <TABLE_NAME>;
 ```

 EX:
 ``` Javascript
 SELECT
    CONCAT(FIRST_NAME, ' ',LAST_NAME)
FROM Authors;
 ```

#### Concat with seperator
Used when we have the same seperator

So instead of using a dash to seperate our columns like this

 ``` Javascript
 SELECT
    CONCAT(author_fname, '-',author_lname, '-')
 AS 'Full Name' FROM books;
 ```

 We can do this instead
  ``` Javascript
 SELECT 
    CONCAT_WS('-' , author_fname, author_lname)
 AS 'Full Name' FROM books;
 ```


#### Using SUBSTRING
Used to cut down words

When using ```SUBSTRING``` the first index is 1

 ``` Javascript
 SELECT SUBSTRING('Hello World', 1, 4)
 ```
We would get back Hell

We can also use a negative index.

That means we will start from the end of the string and work our way backwards

 ``` Javascript
 SELECT SUBSTRING('Hello World', -3)
 ```
We would get back rld

EX: 

 ``` Javascript
 SELECT SUBSTRING(<COLUMN_NAME>, INDEX_1, INDEX-2) FROM <TABLE_NAME>;
 ```

 ``` Javascript
SELECT SUBSTRING(title, 1, 10) FROM books;
 ```

#### Using Replace
Used to replace a part of a string
This function is case sensetive 

 ``` Javascript
SELECT REPLACE('Hello World', 'Hell', 'ljflsjfljs') FROM books;
 ```
 First is the whole value

 Second value is the what we want to select

 Third is what we what to replace with


#### Using Reverse
reverses strings

```Javascript
SELECT REVERSE('HELLO WORLD');
 ```

 #### Using CHAR_LENGTH
 Counts characters in a string
 ```Javascript
SELECT CHAR_LENGTH('HELLO WORLD')
 ```

 #### UPPER and LOWER
 Changes a characters case
 ```Javascript
SELECT UPPER('hello world')
 ```

  ```Javascript
SELECT LOWER('HELLO WORLD')
 ```

 ```Javascript
 SELECT UPPER(title) FROM books;
 ```

## Refining Our Selection
#### Using DISTINCT
using ```DISTINCT``` allows us to get only one distinguished value and no duplicates

```Javascript
SELECT DISTINCT <COLUMN_NAME> from <TABLE_NAME>;
```

```Javascript
SELECT DISTINCT author_lname from books;
```

#### Sorting Data with ORDER BY
This commmand allows us to have a sort order on a column
and is ascending by default

This command also works for numbers to

```Javascript
SELECT <COLUMN_NAME> FROMM <TABLE_NAME> ORDER BY <COLUMN_NAME>
```

default ascending 
```Javascript
SELECT author_lname FROM books ORDER BY author_lname
```

```Javascript
SELECT author_lname FROM books ORDER BY author_lname DESC
```

We dont have to always use the same column name
```Javascript
SELECT title, pages FROM books ORDER BY released_year;
```

#### Using LIMIT
Limits the amount read

```Javascript
SELECT <COLUMN_NAME> FROM <TABLE_NAME> LIMIT <NUMBER>
```

```Javascript
SELECT title, released_year FROM books ORDER BY released_year LIMIT 5;
```

#### Better Searches with LIKE
This commmand will get us results that kinda match our search

```Javascript
SELECT <COLUMN_NAME> FROM <TABLE_NAME> WHERE <COLUMN_NAME> LIKE '%whatever%';
```
```Javascript
SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';
```

Things that start with whatever we want
```Javascript
SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';
```
We can also use underscores to specify by the character count

Each underscore represents how many characters we are searching by, so 4 underscores means we are searching for a word or 2 that has 4 characters

```Javascript
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';
```
#### Cross joins

Allows us to find orders made by a specific person
```Javascript 
SELECT * FROM orders WHERE customer_id = (
    SELECT id
FROM customers
WHERE last_name='George'
);
```

#### Inner Join
Only joins the table if the values match

This code works but its better to use other one below
```Javascript
SELECT * FROM customers, orders  WHERE customers.id = orders.customer_id;
```

Or

Description: 
We select whatever we want from a table, then join with another table.
We use whatever condition on the function.
```Javascript
SELECT * FROM customers
JOIN orders
    ON customers.id = orders.customer_id;
```


#### Left Joins

Select everything from our first table then joins them with our second matching records from our first table

```Javascript
SELECT * FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id;
    
SELECT first_name, last_name, order_date, amount
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id; 

SELECT 
    first_name, 
    last_name,
    IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;
```

#### Right Join
Selects everythying from our last table and merges them with our first table along with any match
```Javascript
SELECT *
FROM customers
    RIGHT JOIN orders
    ON customers.id = orders.customer_id;
```

#### WORKING WITH ON DELETE CASCADE

This will allow us to delete a row or anything that has  foriegn key tied to another table
 
```Javascript
CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) 
        REFERENCES customers(id)
        ON DELETE CASCADE
);
```

## Notes
#### Databases are made of tables

#### We can add functions together

 ```Javascript
 SELECT CONCAT(SUBSTRING(title, 1,10), '...') FROM books;
 ```