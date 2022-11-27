INSERT INTO public.city(name)
	VALUES 
	('Екатеринбург'),
	('Новосибирск'),
	('Актау');

INSERT INTO public.films(
	 film_name, price_for_rent, age_constraint)
	VALUES 
	('Гонка',10,12),
	('Секс в большом городе',15,18),
	('Легенда',12,18),
	('Лицо со шрамом',10,18);
	
	
INSERT INTO public.customers(
	firstname, lastname, age,city_id)
	VALUES 
	('Александр','Филатов',24,3),
	('Сергей','Луноходцев',14,2),
	('Иван','Караван',34,1),
	('Измаил','Филатов',40,2);	
	
INSERT INTO public.orders(
	customer_id, film_id, rental_days)
	VALUES 
	(1,1,5),
	(2,2,1),
	(3,3,2),
	(4,4,1),
	(3,3,2),
	(2,2,2),
	(1,3,4),
	(2,4,3);	