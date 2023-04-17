--Таблица employees
--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

create table if not exists employees(
id serial primary key,
employee_name varchar(50) not null);
INSERT INTO employees (employee_name)
VALUES 
('John Smith'), ('Jane Doe'), ('Bob Johnson'), ('Alice Lee'), ('Chris Brown'), ('Emily Chen'), ('David Kim'), ('Olivia Davis'), ('Tom Jackson'), ('Jessica Liu'),
('Mike White'), ('Sarah Taylor'), ('Mark Lee'), ('Katie Smith'), ('Peter Wang'), ('Linda Chen'), ('Nick Patel'), ('Angela Kim'), ('James Lee'), ('Karen Chen'),
('Joshua Smith'), ('Amanda Jones'), ('Brian Wilson'), ('Catherine Lee'), ('Daniel Kim'), ('Megan Davis'), ('Kevin Lee'), ('Amy Chen'), ('Erica Kim'), ('Sean Brown'),
('Rachel Kim'), ('Alex Smith'), ('Stephanie Lee'), ('Justin Park'), ('Hannah Lee'), ('Brandon Lee'), ('Crystal Kim'), ('Keith Johnson'), ('Caroline Kim'), ('Aaron Chen'),
('Jenny Lee'), ('Gabriel Rodriguez'), ('Elizabeth Kim'), ('Joseph Lee'), ('Jasmine Park'), ('Michael Lee'), ('Sophia Kim'), ('Steven Chen'), ('Ashley Lee'), ('Andrew Kim'),
('Heather Brown'), ('Derek Lee'), ('Melissa Kim'), ('Samuel Lee'), ('Mia Chen'), ('Jason Kim'), ('Nicole Lee'), ('Christopher Lee'), ('Vanessa Chen'), ('Scott Kim'),
('Victoria Lee'), ('Philip Kim'), ('Marissa Chen'), ('Adam Lee'), ('Jocelyn Kim'), ('Jonathan Lee'), ('Grace Lee'), ('William Kim'), ('Evelyn Chen'), ('Benjamin Lee');

--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:

create table if not exists salary(
id serial primary key,
monthly_salary int not null);
insert into salary (monthly_salary)
values 
	('1000'),
	('1100'),
	('1200'),
	('1300'),
	('1400'),
	('1500'),
	('1600'),
	('1700'),
	('1800'),
	('1900'),
	('2000'),
	('2100'),
	('2200'),
	('2300'),
	('2400');
	
--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

create table if not exists employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null);
insert into employee_salary (employee_id, salary_id)
values 
	(3,7),(1,4),(5,9),(40,13),(23,4),(11,2),(52,10),(15,13),(26,4),(16,1),
	(33,7),(31, 7),(9, 2),(69, 1),(55, 13),(38, 6),(22, 5),(34, 5),(30, 9),(67, 5),
	(17, 10),(51, 1),(29, 11),(25, 2),(68, 7),(43, 1),(21, 6),(42, 8),(64, 9),(56, 10),
	(88, 14),(92, 10),(71, 12),(95, 7),(72, 9),(91, 3),(89, 2),(76, 7),(73, 2),(79, 12);

--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:

create table if not exists roles (
id serial primary key,
role_name int not null unique);
alter table roles
alter column role_name type varchar(30);
insert into roles (role_name)
values
	('Junior Python developer'),('Middle Python developer'),('Senior Python developer'),('Junior Java developer'),('Middle Java developer'),
	('Senior Java developer'),('Junior JavaScript developer'),('Middle JavaScript developer'),('Senior JavaScript developer'),('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),('Senior Manual QA engineer'),('Project Manager'),('Designer'),('HR'),
	('CEO'),('Sales manager'),('Junior Automation QA engineer'),('Middle Automation QA engineer'),('Senior Automation QA engineer');
	
--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:

create table if not exists roles_employee (
id serial primary key,
employee_id int not null unique references employees (id),
role_id int not null references roles (id));

insert into roles_employee (employee_id, role_id)
values
	(7, 2),(20, 4),(3, 9),(5, 13),(23, 4),(11, 2),(10, 9),(22, 13),(21, 3),(34, 4),
	(6, 7),(16, 3),(35, 10),(15, 14),(27, 2),(42, 14),(26, 11),(39, 8),(40, 4),(33, 3),
	(8, 11),(45, 4),(47, 2),(30, 2),(53, 3),(67, 8),(19, 13),(9, 9),(28, 7),(43, 2),
	(69, 1),(59, 13),(25, 9),(51, 8),(12, 4),(50, 14),(31, 10),(52, 4),(66, 2),(48, 5);

