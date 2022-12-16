--1.Выведи уникальные фамилии заказчиков из таблицы заказчиков
select distinct lastname from customers;

--2.Доработай запрос так, чтобы выводились фамилии только тех заказчиков, имя которых начинается на русскую "А"
select lastname from customers
 where firstname like 'а%';

--3. Выведи имя, фамилию, и город пользователя только для тех заказчиков, город которых начинается с русской буквы Н
select firstname,lastname,city.name as city from customers,city
 where city.id = customers.id and name like 'н%';

--4.Получи из таблицы заказов информацию по платежам, у которых количество дней проката больше или равно трем.
select f.price_for_rent,f.film_name, o.rental_days,c.firstname
  from orders as o
  join customers as c
    on c.id = o.customer_id
  join films as f
    on f.id = o.film_id
 where rental_days >= 3

--5. Доработай запрос так, чтобы вывести для этих заказов еще название фильма, фамилию заказчика и итоговую сумму платежа (rental_days * flims.price_for_rent). (тут тебе пригодится join)
--   Данные должны быть отсортированы по rental_days в обратном порядке (сначала заказы с самым большим количеством дней) (тут тебе нужен оператор order by)
select f.price_for_rent * o.rental_days as totalsum,f.film_name, o.rental_days,c.firstname,c.lastname
  from orders o
  join customers c
    on c.id = o.customer_id
  join films f
    on f.id = o.film_id
 where rental_days >= 3
order by rental_days desc

--6. Выведи те film_name которые доступны покупателю с возрастом менее 18 лет
select film_name from films
 where age_constraint < 18;
--7. Выведи одним запросом полное имя заказчика (фамилия+имя в одной колонке) и количество заказов этого человека (для объединения пригодится concat, для количества - group by по идентификатору заказчика и оператор count)
select c.firstname ||  ' '  || c.lastname as client,count(c.firstname)
  from customers c
  join orders o
    on c.id = o.customer_id
group by c.firstname,c.lastname

--8. Выведи одним запросом информацию о двух фильмах с самыми длинными названиями (для вычисления длины пригодится оператор lenght, для ограничения вывода сортировка order by и оператор limit для ограничения результата)
select f.film_name, length(film_name) as length
  from films f
order by film_name desc
    limit 2

--9. Выведи одним запросом название фильма, цену за аренду, общее количество случаев, когда этот фильм брали в аренду и общую сумму которую выручили за аренду этих фильмов (количество * на цену)
select film_name, price_for_rent, count(film_name)*price_for_rent as totalsum
  from films f
  join orders o
    on f.id = o.film_id
group by film_name,price_for_rent


