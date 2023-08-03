--Retrieve all customers whose names start with the letter 'A'.

SELECT *
FROM customers
WHERE name LIKE 'A%';

/*This query uses the LIKE operator with the pattern 'A%', which will match any customer name that
starts with the letter 'A' followed by zero or more characters. The % is a wildcard that represents
any sequence of characters. So, the query will return all rows from the customers table where the name
starts with 'A'.*/

--Find all products with names containing the word 'phone'.

SELECT *
FROM products
WHERE product_name LIKE '%phone%';

/*This query uses the LIKE operator with the pattern '%phone%', which will match any product name 
that contains the word 'phone' anywhere in its name. */

--List all employees whose last names end with 'son'.

SELECT *
FROM employees
WHERE last_name LIKE '%son';

/*This query uses the LIKE operator with the pattern '%son', which will match any last name that 
ends with 'son'.*/

--Get all orders with reference numbers containing '2023'.

SELECT *
FROM orders
WHERE reference_number LIKE '%2023%';

/*
This query uses the LIKE operator with the pattern '%2023%', which will match any reference number 
that contains '2023' anywhere in its value.*/

--Find all emails that include the domain '@gmail.com'.

SELECT *
FROM contacts
WHERE email LIKE '%@gmail.com'

--Get all user names containing the word 'admin' regardless of case sensitivity.

SELECT *
FROM users
WHERE username ILIKE '%admin%';

/*This query uses the ILIKE operator with the pattern '%admin%', 
which will match any user name that contains the word 'admin' anywhere in its value, 
regardless of the case.*/

--Retrieve all addresses that include the word 'Street' or 'Road'.

SELECT *
FROM addresses
WHERE address LIKE '%Street%' OR address LIKE '%Road%';

--Retrieve all products with names starting with 'S' and ending with 'e'.

SELECT *
FROM products
WHERE product_name LIKE 'S%e';

--Find all employees whose first names contain exactly three characters.
SELECT *
FROM employees
WHERE LENGTH(first_name) = 3;

--List all customers with phone numbers in the format '(xxx) xxx-xxxx', where 'x' represents any digit.

SELECT *
FROM customers
WHERE phone_number LIKE '(###) ###-####';

---Get all orders placed on February, regardless of the year.

SELECT *
FROM orders
WHERE EXTRACT(MONTH FROM order_date) = 2;

/*In this query, the EXTRACT(MONTH FROM order_date) function extracts the month from the order_date,
and the WHERE clause filters the rows where the month is equal to 2, which represents February.*/

--Find all products with names containing exactly two words, separated by a space.

SELECT *
FROM products
WHERE product_name LIKE '% %' AND product_name NOT LIKE '% % %';

/*In this query, the first condition product_name LIKE '% %' checks if the product_name 
contains a space, which means it has at least two words. The second condition product_name 
NOT LIKE '% % %' ensures that the product_name does not contain more than two words.*/

--Retrieve all cities whose names have a vowel as the second letter.

SELECT *
FROM cities
WHERE city_name LIKE '_[AEIOUaeiou]%';

--List all employees whose last names have the same first three characters as their first names.

SELECT *
FROM employees
WHERE LEFT(first_name, 3) = LEFT(last_name, 3);

--Get all emails that include the domain '@company.com' and end with 'support'.

SELECT *
FROM contacts
WHERE email LIKE '%@company.com' AND email LIKE '%support';

--Find all customers with names that have the same first letter as the last letter (e.g., Anna, Bob, Eve).

SELECT *
FROM customers
WHERE LEFT(name, 1) = RIGHT(name, 1);

--Retrieve all addresses with numbers in the format '### Street', where '#' represents any digit.

SELECT *
FROM addresses
WHERE address LIKE '[0-9][0-9][0-9] Street';