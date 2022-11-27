1 .
SELECT DISTINCT lastname FROM customers;
2.
SELECT lastname FROM customers
WHERE Firstname LIKE 'А%';
3.
SELECT firstname,lastname,CITY.name AS city FROM customers,city
WHERE CITY.id = customers.id AND NAME LIKE 'Н%';
4.
SELECT DISTINCT FILMS.price_for_rent FROM ORDERS,FILMS
WHERE Rental_days <= 3;
5.

6.
SELECT FILM_NAME FROM FILMS
WHERE AGE_CONSTRAINT<18;
7.


