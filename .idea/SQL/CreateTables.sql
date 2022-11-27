CREATE TABLE CITY(
Id serial PRIMARY KEY,
Name CHARACTER(30)
);

CREATE TABLE FILMS(
Id serial PRIMARY KEY,
film_name CHARACTER(30) NOT NULL,
price_for_rent INTEGER CHECK(price_for_rent>0) ,
age_constraint INTEGER CHECK(age_constraint>0));

CREATE TABLE CUSTOMERS(
Id serial PRIMARY KEY,
Firstname CHARACTER(30) NOT NULL,
Lastname CHARACTER(30) NOT NULL,
Age INTEGER,
City_id INTEGER,
FOREIGN KEY (City_id) REFERENCES CITY(id)
);

CREATE TABLE ORDERS(
Id serial PRIMARY KEY,
Customer_id INTEGER,
Film_id INTEGER,
Rental_days INTEGER,	
FOREIGN KEY (Film_id) REFERENCES FILMS(id),
FOREIGN KEY (Customer_id) REFERENCES CUSTOMERS(id)
);
