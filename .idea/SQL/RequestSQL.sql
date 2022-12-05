1 .
SELECT DISTINCT lastname FROM customers;
2.
SELECT lastname FROM customers
WHERE Firstname LIKE 'А%';
3.
SELECT firstname,lastname,CITY.name AS city FROM customers,city
WHERE CITY.id = customers.id AND NAME LIKE 'Н%';
4.
select F.price_for_rent,F.film_name, O.Rental_days,C.Firstname
from Orders as O
         join Customers as C
              on C.Id = O.Customer_id
         join Films as F
              on F.Id = O.Film_id
where rental_days >=3
5.
select F.price_for_rent * O.Rental_days as TotalSum,F.film_name, O.Rental_days,C.Firstname,C.Lastname
from Orders as O
         join Customers as C
              on C.Id = O.Customer_id
         join Films as F
              on F.Id = O.Film_id
where rental_days >=3
order by rental_days desc
    6.
SELECT FILM_NAME FROM FILMS
WHERE AGE_CONSTRAINT<18;
7.
select C.Firstname ||  ' '  || C.Lastname as Client,count(c.firstname)
from Customers as C
         join Orders as O
              on C.id = o.customer_id
group by c.firstname,c.lastname
8.
select F.film_name, length(film_name) as length
from Films as F
order by film_name desc
    limit 2
9.
select film_name, price_for_rent, count(film_name)*price_for_rent as Totalsum
from Films as F
         join Orders as O
              on F.id = O.Film_id
group by film_name,price_for_rent


