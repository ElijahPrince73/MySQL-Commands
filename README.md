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
## Notes
#### Databases are made of tables