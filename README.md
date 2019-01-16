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

****
## Notes
#### Databases are made of tables