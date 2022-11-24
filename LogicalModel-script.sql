CREATE TABLE booking (
 lesson_date TIMESTAMP(10),
 student_id INT GENERATED ALWAYS AS IDENTITY,
 instructor_id INT GENERATED ALWAYS AS IDENTITY,
 instrument_type VARCHAR(500),
 skill_level VARCHAR(500)
);


CREATE TABLE ensabmle (
 fixed_time_slot TIMESTAMP(10)
);


CREATE TABLE group_lesson (
 number_of_spots INT,
 instructor_id INT GENERATED ALWAYS AS IDENTITY,
 fixed_time_slot TIMESTAMP(10),
 skill_level VARCHAR(500),
 instrument_type VARCHAR(500),
 number_of_spots_0 INT
);


CREATE TABLE individual_lesson (
 flexible_time_slot TIMESTAMP(10),
 student_id INT GENERATED ALWAYS AS IDENTITY,
 instrument_type VARCHAR(500)
);


CREATE TABLE instructor (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 number_of_lessons_per_month INT,
 adress_street_name VARCHAR(500) NOT NULL,
 adress_zip_code VARCHAR(500) NOT NULL,
 adress_city VARCHAR(500) NOT NULL,
 can_teach_ensamble BOOLEAN,
 name VARCHAR(500),
 person_number UNIQUE VARCHAR(12) NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE instructor_email (
 instructor_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 email VARCHAR(500) NOT NULL
);

ALTER TABLE instructor_email ADD CONSTRAINT PK_instructor_email PRIMARY KEY (instructor_id);


CREATE TABLE instructor_info (
 name VARCHAR(500),
 personal_number VARCHAR(12),
 can_teach_ensamble BOOLEAN
);


CREATE TABLE instructor_phone (
 instructor_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 phone_number VARCHAR(500) NOT NULL
);

ALTER TABLE instructor_phone ADD CONSTRAINT PK_instructor_phone PRIMARY KEY (instructor_id);


CREATE TABLE instruments (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 brand VARCHAR(500),
 instrument_type VARCHAR(500),
 renting_price INT,
 rented BOOLEAN
);

ALTER TABLE instruments ADD CONSTRAINT PK_instruments PRIMARY KEY (id);


CREATE TABLE parent_info (
 name VARCHAR(500),
 personal_number VARCHAR(12)
);


CREATE TABLE price_scheme (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 skill_level_price INT,
 lesson_type_price INT,
 discount INT,
 instructor_salary INT
);

ALTER TABLE price_scheme ADD CONSTRAINT PK_price_scheme PRIMARY KEY (id);


CREATE TABLE student (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 skill_level NOT NULL VARCHAR(500),
 number_of_lessons_per_month INT,
 name VARCHAR(500),
 adress_street_name VARCHAR(500) NOT NULL,
 adress_zip_code VARCHAR(500) NOT NULL,
 adress_city VARCHAR(500) NOT NULL,
 person_number UNIQUE VARCHAR(12) NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE student_email (
 student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 email UNUIQUE VARCHAR(500) NOT NULL
);

ALTER TABLE student_email ADD CONSTRAINT PK_student_email PRIMARY KEY (student_id);


CREATE TABLE student_info (
 name VARCHAR(500),
 personal_number VARCHAR(12)
);


CREATE TABLE student_phone (
 student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 phone_number UNUIQUE VARCHAR(500) NOT NULL
);

ALTER TABLE student_phone ADD CONSTRAINT PK_student_phone PRIMARY KEY (student_id);


CREATE TABLE lesson (
 id VARCHAR(500) NOT NULL,
 instructor_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 price_scheme_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 max_spots INT NOT NULL,
 min_spots INT,
 skill_level VARCHAR(500) NOT NULL,
 number_of_spots INT,
 genre VARCHAR(500),
 time TIMESTAMP(10) NOT NULL,
 lesson_type VARCHAR(500) NOT NULL,
 instrument_type VARCHAR(500),
 room_number VARCHAR(500) NOT NULL
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (id);


CREATE TABLE parent_email (
 student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 email UNUIQUE VARCHAR(500) NOT NULL
);

ALTER TABLE parent_email ADD CONSTRAINT PK_parent_email PRIMARY KEY (student_id);


CREATE TABLE parent_phone (
 student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 phone_number UNUIQUE VARCHAR(500) NOT NULL
);

ALTER TABLE parent_phone ADD CONSTRAINT PK_parent_phone PRIMARY KEY (student_id);


CREATE TABLE rented_instruments (
 instruments_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 rented_date TIMESTAMP(10)
);

ALTER TABLE rented_instruments ADD CONSTRAINT PK_rented_instruments PRIMARY KEY (instruments_id);


CREATE TABLE sibling  (
 student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 sibling_student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE sibling  ADD CONSTRAINT PK_sibling  PRIMARY KEY (student_id);


CREATE TABLE student_lessons (
 student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 lesson_id INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE student_lessons ADD CONSTRAINT PK_student_lessons PRIMARY KEY (student_id,lesson_id);


ALTER TABLE instructor_email ADD CONSTRAINT FK_instructor_email_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE instructor_phone ADD CONSTRAINT FK_instructor_phone_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE student_email ADD CONSTRAINT FK_student_email_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE student_phone ADD CONSTRAINT FK_student_phone_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_1 FOREIGN KEY (price_scheme_id) REFERENCES price_scheme (id);


ALTER TABLE parent_email ADD CONSTRAINT FK_parent_email_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE parent_phone ADD CONSTRAINT FK_parent_phone_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE rented_instruments ADD CONSTRAINT FK_rented_instruments_0 FOREIGN KEY (instruments_id) REFERENCES instruments (id);
ALTER TABLE rented_instruments ADD CONSTRAINT FK_rented_instruments_1 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE sibling  ADD CONSTRAINT FK_sibling _0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE student_lessons ADD CONSTRAINT FK_student_lessons_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE student_lessons ADD CONSTRAINT FK_student_lessons_1 FOREIGN KEY (lesson_id) REFERENCES lesson (id);


