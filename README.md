# MySQL-Commands and notes

## Commands
### Show databases
``` SHOW DATABASES; ```

### Create Database
``` CREATE DATABASE <NAME_OF_DB>;```

### Delete Database
```DROP DATABASE <NAME_OF_DB>;```

### Work with or use database
``` USE <DB_NAME> ```

### See what database we are currently working with
``` SELECT database() ```

### Create Table
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

 ### Show Tables
``` SHOW TABLES ```

### Show Columns
``` SHOW COLUMNS FROM <TABLE_NAME> ```

or 

``` DESC <TABLE_NAME> ```

### Delete Tables
```DROP TABLE <TABLE_NAME ```

### Inserting Data into a Table
```Javascript
 INSERT INTO <TABLE_NAME>(name, age);
 VALUES ('JETSON', 7)
 ```

 order dosn't matter but we should keep the same format

### Reading Table Data
``` SELECT * FROM <TABLE_NAME> ```

### Multiple inserts
```Javascript
INSERT INTO table_name 
            (column_name, column_name) 
VALUES      (value, value), 
            (value, value), 
            (value, value);
 ```

### To see Warnings
``` SHOW WARNINGS```

### NULL and NOT_NULL

just add NOT_NULL WHEN CREATING A TABLE
```Javascript
 CREATE TABLE <TABLE_NAME>
 ( 
     column_name data_type NOT NULL,
     column_name data_type NOT NULL
 );
 ```

### Setting Default Values

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

 ### Primary Key and Auto Increment
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
****
## Notes
#### Databases are made of tables