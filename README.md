# SQL

# [<img src="https://info-comp.ru/wp-content/uploads/2019/12/Top_popular_database_management_systems_5.jpg" title="" alt="D|" width="525" border="2">](https://www.postgresql.com/)

## **Homeworks status:** _finished_

---

- [HW_1](#hw_1)
  - [Script](SC1_link)
  - [Diag_view](DgV1_link)
- [HW_2_3](#hw2_3)
  - [Script_2_Build](SC2_link)
  - [Script_3](SC3_link)
  - [Diag_view](DgV23_link)

---

## Learned skills

- Understanding of relational database concepts
- Writing and executing SQL queries to retrieve data
- Creating, modifying, and managing database tables and schema
- Understanding and applying data normalization principles
- Creating and managing database users and permissions 
- Familiarity with backup and recovery procedures
- Understanding of transaction management and locking mechanisms
- Writing complex SQL queries with multiple joins, subqueries, and aggregate functions
- Debugging and troubleshooting SQL errors and performance issues.

---

## HW 1 <a name="hw_1"></a>

<details>
<summary>Homework 1</summary>
  Выполните все команды данные ниже, результат проверить на тестовой базе данных.
  <details>
    <summary>Tasks and queries</summary>
```sql
    -- 1. Вывести все поля и все строки.
    select * from students;
    -- 2. Вывести всех студентов в таблице
    select name from students;
    --select id, name from students
    select id, name from students;
    -- 3. Вывести только Id пользователей
    select id from students;
    -- 4. Вывести только имя пользователей
    select name from students;
    -- 5. Вывести только email пользователей
    select email from students;
    -- 6. Вывести имя и email пользователей
    select name, email from students;
    -- 7. Вывести id, имя, email и дату создания пользователей
    select id, name, email, created_on from students;
    -- 8. Вывести пользователей где password 12333
    select id, name from students where password = '12333';
    -- 9. Вывести пользователей которые были созданы 2021-03-26 00:00:00
    select id, name from students where created_on = '2021-03-26 00:00:00';
    -- 10. Вывести пользователей где в имени есть слово Анна
    select id, name from students where name like '%Anna%';
    -- 11. Вывести пользователей где в имени в конце есть 8
    select id, name from students where name like '%8';
    -- 12. Вывести пользователей где в имени в есть буква а
    select id, name from students where name like '%a%';
    -- 13. Вывести пользователей которые были созданы 2021-07-12 00:00:00
    select id, name from students where created_on = '2021-07-12 00:00:00';
    -- 14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
    select id, name from students where created_on = '2021-07-12 00:00:00' and password = '1m313';
    -- 15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
    select id, name from students where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';
    -- 16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
    select id, name from students where created_on = '2021-07-12 00:00:00' and name like '%8%';
    -- 17. Вывести пользователя у которых id равен 110
    select id, name from students where id = 110;
    -- 18. Вывести пользователя у которых id равен 153
    select id, name from students where id = 153;
    -- 19. Вывести пользователя у которых id больше 140
    select id, name from students where id > 140;
    -- 20. Вывести пользователя у которых id меньше 130
    select id, name from students where id < 130;
    -- 21. Вывести пользователя у которых id меньше 127 или больше 188
    select id, name from students where id < 127 or id > 188;
    -- 22. Вывести пользователя у которых id меньше либо равно 137
    select id, name from students where id <= 137;
    -- 23. Вывести пользователя у которых id больше либо равно 137
    select id, name from students where id >= 137;
    -- 24. Вывести пользователя у которых id больше 180 но меньше 190
    select id, name from students where id > 180 and id < 190;
    -- 25. Вывести пользователя у которых id между 180 и 190
    select id, name from students where id between 180 and 190;
    -- 26. Вывести пользователей где password равен 12333, 1m313, 123313
    select id, name from students where password in ('12333', '1m313', '123313');
    -- 27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
    select id, name from students where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
    -- 28. Вывести минимальный id 
      select min(id) from students;
    -- 29. Вывести максимальный.
    select max(id) from students;
    -- 30. Вывести количество пользователей
    select count(id) from students;
    -- 31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
    select id, name, created_on from students order by created_on asc;
    -- 32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
    select id, name, created_on from students order by created_on desc;
```
 </details>
    <details>
  <summary>Diagram view</summary>
  <img title="" src="https://github.com/Foxive/SQL/blob/main/SQL_HW1/Diag_HW_1.png?raw=true" alt="">
  </details>
</details>

---

## HW 2_3 <a name="hw2_3"></a>

<details>

<summary>Homework 2_3</summary>

  _Homework 2._ Создайте базу данных с определенными параметрами. Добавьте тестовые данные, подходящие под необходимые условия.

  _Homework 3._ Подключитесь к созданной таблице и создайте запросы для выполнения задач ниже.

<details>

<summary>Homework 2</summary>

```sql
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
    ('1000'), ('1100'), ('1200'), ('1300'), ('1400'), ('1500'), ('1600'), ('1700'),
('1800'), ('1900'), ('2000'), ('2100'), ('2200'), ('2300'), ('2400');

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
```

</details>
<details>
    <summary> Homework 3 </summary>

```sql
-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary.monthly_salary from employee_salary 
inner join salary on employee_salary.salary_id = salary.id 
inner join employees on employees.id = employee_salary.employee_id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
select employees.employee_name, salary.monthly_salary from employee_salary 
inner join salary on employee_salary.salary_id = salary.id 
inner join employees on employees.id = employee_salary.employee_id and salary.monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select salary.monthly_salary , employees.employee_name  from employee_salary 
inner join salary on employee_salary.salary_id = salary.id 
left join employees on employees.id = employee_salary.employee_id where employees.employee_name is null;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select  salary.monthly_salary, employees.employee_name from employee_salary
left join salary on employee_salary.salary_id = salary.id
left join employees on employee_salary.employee_id = employees.id
where employees.employee_name is null;

-- 5. Найти всех работников кому не начислена ЗП.
select salary.monthly_salary, employees.employee_name from employee_salary 
left join salary on employee_salary.salary_id = salary.id
left join employees on employees.id = employee_salary.employee_id
where salary.monthly_salary is null;

-- 6. Вывести всех работников с названиями их должности.
select employees.employee_name, roles.role_name from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id;

-- 7. Вывести имена и должность только Java разработчиков.
select employees.employee_name, roles.role_name from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
where roles.role_name like '% Java %';

-- 8. Вывести имена и должность только Python разработчиков.
select employees.employee_name, roles.role_name from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
where roles.role_name like '% Python %';

-- 9. Вывести имена и должность всех QA инженеров.
select employees.employee_name, roles.role_name from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
where roles.role_name like '% QA %';

-- 10. Вывести имена и должность ручных QA инженеров.
select employees.employee_name, roles.role_name from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
where roles.role_name like '%Manual QA%';

-- 11. Вывести имена и должность автоматизаторов QA
select employees.employee_name, roles.role_name from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
where roles.role_name like '%Automation QA%';

-- 12. Вывести имена и зарплаты Junior специалистов
select employees.employee_name, salary.monthly_salary  from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов
select employees.employee_name, salary.monthly_salary  from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов
select employees.employee_name, salary.monthly_salary  from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков
select employees.employee_name, salary.monthly_salary  from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where roles.role_name like '% Java %';

-- 16. Вывести зарплаты Python разработчиков
select employees.employee_name, salary.monthly_salary  from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%Python%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков
select employees.employee_name, salary.monthly_salary  from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where roles.role_name like 'Junior Python%';
-- 18. Вывести имена и зарплаты Middle JS разработчиков
select employees.employee_name, salary.monthly_salary  from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where roles.role_name like 'Middle JavaScript%';

-- 19. Вывести имена и зарплаты Senior Java разработчиков
select employees.employee_name, salary.monthly_salary  from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where roles.role_name like 'Senior Java %';

-- 20. Вывести зарплаты Junior QA инженеров
select employees.employee_name, salary.monthly_salary  from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where roles.role_name like 'Junior%QA%';

-- 21. Вывести среднюю зарплату всех Junior специалистов
select avg(salary.monthly_salary) as AVG_salary  from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков
select avg(salary.monthly_salary) as AVG_salary  from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%JavaScript%';

-- 23. Вывести минимальную ЗП QA инженеров
select min(salary.monthly_salary) as min_month_slry  from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%QA%';

-- 24. Вывести максимальную ЗП QA инженеров
select max(salary.monthly_salary) as max_month_slry  from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%QA%';

-- 25. Вывести количество QA инженеров
select count(roles.role_name) as QA_in_Company  from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
where roles.role_name like '%QA%';

-- 26. Вывести количество Middle специалистов.
select count(roles.role_name) as Middle_in_Company  from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
where roles.role_name like 'Middle%';

-- 27. Вывести количество разработчиков
select count(roles.role_name) as Developers_in_Company  from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
where roles.role_name like '%developer';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(salary.monthly_salary) as sum_salary_dev  from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id
inner join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%developer';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees.employee_name, roles.role_name, salary.monthly_salary from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id
inner join salary on salary.id = employee_salary.salary_id
order by salary.monthly_salary asc;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id
inner join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary asc;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id
inner join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary < 2300
order by salary.monthly_salary asc;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary.monthly_salary from roles_employee
inner join employees on employee_id = employees.id
inner join roles on role_id = roles.id
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id
inner join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary in (1100, 1500, 2000)
order by salary.monthly_salary asc;
```

</details>
<details>
<summary>Diagram view</summary>
  <img title="" src="https://github.com/Foxive/SQL/blob/main/SQL_HW_2_3/Diag_HW_2_3.png?raw=true" alt="">
  </details>

</details>
    </details>

</details>

[//]: # (Reference links)
[SC1_link]: </SQL_HW_1/HW_1.sql>
[DgV1_link]: </SQL_HW_1/Diag_HW_1.png>
[SC2_link]: </SQL_HW_2_3/HW2_Build_scheme.sql>
[SC3_link]: </SQL_HW_2_3/HW_3.sql>

[DgV23_link]: </SQL_HW_2_3/Diag_HW_2_3.png>