-- Напиши скрипт создания таблицы со следующими параметрами:
-- •	название таблицы - CITY
-- •	содержит в себе 2 столбца - id, name,
-- •	первичным ключом будет поле id, который инкрементируется каждый раз при создании города
create table city(
id serial primary key,
name character(30)
);

-- Напиши скрипт создания таблицы со следующими параметрами:
-- •	Название таблицы - FILMS
-- •	содержит в себе 4 столбца id, film_name, price_for_rent, age_constraint (ограничение по возрасту для выдачи, тип число = возрасту с которого доступен фильм)
-- •	ограничение > 0 на price и на age, ограничение not null на названия
-- •	Первичным ключом будет поле id, который инкрементируется каждый раз при создании фильма
create table films(
id serial primary key,
film_name character(30) not null,
price_for_rent integer check(price_for_rent>0) ,
age_constraint integer check(age_constraint>0));

-- Напиши скрипт создания таблицы со следующими параметрами:
-- •	название таблицы - CUSTOMERS
-- •	содержит в себе 5 столбцов - id, first_name, last_name, age, city_id
-- •	первичным ключом будет поле id, который инкрементируется каждый раз, при создании пользователя
-- •	ограничение нот налл на поля имени и фамилии
-- •	внешним ключом на поле id таблицы городов будет city_id

create table customers(
id serial primary key,
firstname character(30) not null,
lastname character(30) not null,
age integer,
city_id integer,
foreign key (city_id) references city(id)
);

-- Напиши скрипт создания таблицы со следующими параметрами:
-- •	название таблицы - ORDERS
-- •	содержит в себе 4 столбца - id, customer_id, film_id, rental_days(количество дней на которое был взят фильм, тип целое число)
-- •	первичным ключом будет поле id, который инкрементируется каждый раз, при создании заказа
-- •	внешним ключом на поле id таблицы пользователей будет customer_id
-- •	внешним ключом на поле id таблицы фильмов будет film_id
create table orders(
id serial primary key,
customer_id integer,
film_id integer,
rental_days integer,
foreign key (film_id) references films(id),
foreign key (customer_id) references customers(id)
);

