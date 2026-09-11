-- CREATE DATABASE colledge_db WITH OWNER = postgres ENCODING = 'UTF8';
-- drop table desciplines;
-- drop table teachers;



-- CREATE TABLE teachers (
--     teacher_id SERIAL PRIMARY KEY,
-- 	last_name varchar(50) not null,
-- 	first_name varchar(50) not null,
-- 	departament varchar(100) not null
-- );


-- CREATE TABLE desciplines (
--     discipline_id SERIAL PRIMARY KEY,
-- 	dicipline_name varchar(50) not null unique,
-- 	hours integer not null check (hours > 0)
-- );

-- CREATE TABLE groups (
--     group_id SERIAL PRIMARY KEY,
--     group_name VARCHAR(20) NOT NULL UNIQUE,
--     specialty VARCHAR(100) NOT NULL,
--     admission_year INT NOT NULL
-- );

-- CREATE TABLE students (
--     student_id SERIAL PRIMARY KEY,
--     last_name VARCHAR(50) NOT NULL,
--     first_name VARCHAR(50) NOT NULL,
--     middle_name VARCHAR(50),  -- NULL разрешён
--     birth_date DATE NOT NULL,
--     group_id INTEGER NOT NULL,

--     CONSTRAINT fk_students_groups
--         FOREIGN KEY (group_id)
--         REFERENCES groups(group_id)
--         ON UPDATE CASCADE
--         ON DELETE CASCADE
-- );



-- CREATE TABLE lessons (
--     lesson_id SERIAL PRIMARY KEY,
--     group_id INTEGER NOT NULL,
--     discipline_id INTEGER NOT NULL,
--     teacher_id INTEGER NOT NULL,
--     lesson_date DATE NOT NULL,
--     lesson_type VARCHAR(30) NOT NULL,

--     CONSTRAINT fk_lessons_groups
--         FOREIGN KEY (group_id)
--         REFERENCES groups(group_id)
--         ON UPDATE CASCADE
--         ON DELETE CASCADE,

--     CONSTRAINT fk_lessons_disciplines
--         FOREIGN KEY (discipline_id)
--         REFERENCES desciplines(discipline_id)
--         ON UPDATE CASCADE
--         ON DELETE RESTRICT,

--     CONSTRAINT fk_lessons_teachers
--         FOREIGN KEY (teacher_id)
--         REFERENCES teachers(teacher_id)
--         ON UPDATE CASCADE
--         ON DELETE RESTRICT
-- );

-- Очищаем таблицы и сбрасываем счетчики ID до 1
-- TRUNCATE TABLE students, lessons, groups, teachers, desciplines RESTART IDENTITY CASCADE;


-- INSERT INTO groups 
--     (group_name, specialty, admission_year)
-- VALUES 
--     ('П-21', 'Программирование', 2026),
--     ('ИС-22', 'Информационные системы', 2026),
--     ('ЭК-21', 'Экономика', 2026);

-- select * from groups;



-- INSERT INTO students 
--     (last_name, first_name, middle_name, birth_date, group_id)
-- VALUES 
--     ('Иванов', 'Иван', 'Иванович', '2007-03-15', 1),
--     ('Петров', 'Алексей', 'Сергеевич', '2007-07-21', 1),
--     ('Сидорова', 'Анна', 'Игоревна', '2006-11-04', 2),
--     ('Кузнецов', 'Максим', 'Олегович', '2007-01-18', 2),
--     ('Смирнова', 'Елена', 'Андреевна', '2006-09-27', 3);



-- INSERT INTO teachers 
--     (last_name, first_name, departament)
-- VALUES 
--     ('Волков', 'Александр', 'Информационные технологии'),
--     ('Орлова', 'Мария', 'Общеобразовательные дисциплины'),
--     ('Фёдоров', 'Дмитрий', 'Программирование');


-- INSERT INTO desciplines
--     (dicipline_name, hours)
-- VALUES 
--     ('Основы проектирования баз данных', 72),
--     ('Информационные технологии', 72),
--     ('Программирование', 144),
--     ('Компьютерные сети', 72);


-- INSERT INTO lessons 
--     (group_id, discipline_id, teacher_id, lesson_date, lesson_type)
-- VALUES 
--     (1, 1, 1, '2026-09-10', 'Лекция'),
--     (1, 3, 3, '2026-09-11', 'Практика'),
--     (2, 1, 1, '2026-09-10', 'Практика'),
--     (2, 2, 2, '2026-09-12', 'Лекция'),
--     (3, 2, 2, '2026-09-13', 'Практика');


-- INSERT INTO students 
--     (last_name, first_name, birth_date, group_id)
-- VALUES 
--     ('Тестов', 'Иван', '2007-05-10', 999);

