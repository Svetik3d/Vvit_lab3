-- \i 'C:/Users/sveta/Documents/labs/script_lab6.sql';

CREATE DATABASE mtuci_db_students;
\c mtuci_db_students;

--таблица с информацией о кафедре (id, название, деканат);
CREATE TABLE department (id serial, name varchar PRIMARY KEY, dean varchar NOT NULL);
--Заполнить таблицу кафедра 2 записями;
INSERT INTO department (name, dean) VALUES ('СИСРТ', 'А-111');
INSERT INTO department (name, dean) VALUES ('МКиИТ', 'А-315');

--таблица с информацией о студенческой группе (id, название, кафедра);
CREATE TABLE student_group (id serial, name varchar NOT NULL PRIMARY KEY, department_group varchar REFERENCES department(name));
--Заполнить таблицу групп 4 записями (по 2 группы на кафедру);
INSERT INTO student_group (name, department_group) VALUES ('БСС2201', 'СИСРТ');
INSERT INTO student_group (name, department_group) VALUES ('БСС1901', 'СИСРТ');
INSERT INTO student_group (name, department_group) VALUES ('БВТ2202', 'МКиИТ');
INSERT INTO student_group (name, department_group) VALUES ('БВТ2203', 'МКиИТ');

--таблица с информацией о студентах (имя, паспортные данные, группа);
CREATE TABLE students (id SERIAL PRIMARY KEY, full_name varchar NOT NULL, passport varchar(10) NOT NULL, group_name varchar REFERENCES student_group(name));
--Заполнить таблицу студенты по 5 студентов на группу(20 всего);
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999901', 'БВТ2202');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999902', 'БВТ2202');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999903', 'БВТ2202');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999904', 'БВТ2202');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999905', 'БВТ2202');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999906', 'БВТ2203');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999907', 'БВТ2203');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999908', 'БВТ2203');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999909', 'БВТ2203');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999910', 'БВТ2203');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999911', 'БСС2201');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999912', 'БСС2201');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999913', 'БСС2201');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999914', 'БСС2201');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999915', 'БСС2201');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999916', 'БСС1901');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999917', 'БСС1901');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999918', 'БСС1901');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999919', 'БСС1901');
INSERT INTO students (full_name, passport, group_name) VALUES ('Попова Светлана Александровна', '9999999920', 'БСС1901');
