## Login to interactive mysql/mariadb shell

mysql -u root -p

## Creating database

**CREATE DATABASE** my_database;

## Connect to database

**USE DATABASE** my_database;

## Create new table

**CREATE_TABLE** my_new_table

(

first_name **VARCHAR**(20),

last_name **VARCHAR**(30),

age **INT**,

birthday **DATE**,

profession **VARCHAR**(30),

tax_rate **DESC**(3,2),

gender **CHAR**(1),

comments **BLOB**,

registered_at **DATETIME**

);

## Display table details(describe)

**DESC** my_table;

## Delete table

**DROP TABLE** my_contacts;

## Clean table

**TRUNCATE TABLE** my_contacts;

## Insert record into the table

**INSERT INTO** my_contacts

(last_name, first_name, email, gender, birthday, profession, location, status, interests, seeking)

**VALUES**

( 'Doe', 'John', 'johndoe@gmail.com', 'M', '1980-05-09', 'web developer', 'World', 'Married', 'Chill & relax', 'Dog' );

## Query all records with all fields from table

**SELECT** * **FROM** my_contacts;
