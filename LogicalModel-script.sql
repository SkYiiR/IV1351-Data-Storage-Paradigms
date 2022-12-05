CREATE TABLE instructor (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 adress_street_name VARCHAR(500) NOT NULL,
 adress_zip_code VARCHAR(500) NOT NULL,
 adress_city VARCHAR(500) NOT NULL,
 can_teach_ensamble BOOLEAN,
 name VARCHAR(500),
 person_number VARCHAR(12) NOT NULL UNIQUE 
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE instructor_email (
 instructor_id INT NOT NULL,
 email VARCHAR(500) NOT NULL
);

ALTER TABLE instructor_email ADD CONSTRAINT PK_instructor_email PRIMARY KEY (instructor_id);


CREATE TABLE instructor_phone (
 instructor_id INT NOT NULL,
 phone_number VARCHAR(500) NOT NULL
);

ALTER TABLE instructor_phone ADD CONSTRAINT PK_instructor_phone PRIMARY KEY (instructor_id);


CREATE TABLE instrument (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 brand VARCHAR(500),
 instrument_type VARCHAR(500),
 renting_price INT,
 rented BOOLEAN
);

ALTER TABLE instrument ADD CONSTRAINT PK_instruments PRIMARY KEY (id);


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
 skill_level VARCHAR(500) NOT NULL,
 name VARCHAR(500),
 adress_street_name VARCHAR(500) NOT NULL,
 adress_zip_code VARCHAR(500) NOT NULL,
 adress_city VARCHAR(500) NOT NULL,
 person_number VARCHAR(12) NOT NULL UNIQUE 
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE student_email (
 student_id INT NOT NULL,
 email VARCHAR(500) NOT NULL UNIQUE 
);

ALTER TABLE student_email ADD CONSTRAINT PK_student_email PRIMARY KEY (student_id);


CREATE TABLE student_phone (
 student_id INT NOT NULL,
 phone_number VARCHAR(500) NOT NULL UNIQUE 
);

ALTER TABLE student_phone ADD CONSTRAINT PK_student_phone PRIMARY KEY (student_id);


CREATE TABLE lesson (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instructor_id INT NOT NULL,
 price_scheme_id INT NOT NULL,
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
 student_id INT NOT NULL,
 email VARCHAR(500) NOT NULL UNIQUE 
);

ALTER TABLE parent_email ADD CONSTRAINT PK_parent_email PRIMARY KEY (student_id);


CREATE TABLE parent_phone (
 student_id INT NOT NULL,
 phone_number VARCHAR(500) NOT NULL UNIQUE 
);

ALTER TABLE parent_phone ADD CONSTRAINT PK_parent_phone PRIMARY KEY (student_id);


CREATE TABLE rented_instruments (
 instruments_id INT NOT NULL,
 student_id INT NOT NULL,
 rented_date TIMESTAMP(10)
);

ALTER TABLE rented_instruments ADD CONSTRAINT PK_rented_instruments PRIMARY KEY (instruments_id);


CREATE TABLE sibling  (
 student_id INT NOT NULL,
 sibling_student_id INT NOT NULL
);

ALTER TABLE sibling  ADD CONSTRAINT PK_sibling  PRIMARY KEY (student_id,sibling_student_id);


CREATE TABLE student_lessons (
 student_id INT NOT NULL,
 lesson_id INT NOT NULL
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


ALTER TABLE rented_instruments ADD CONSTRAINT FK_rented_instrument_0 FOREIGN KEY (instruments_id) REFERENCES instrument (id);
ALTER TABLE rented_instruments ADD CONSTRAINT FK_rented_instrument_1 FOREIGN KEY (student_id) REFERENCES student (id);

ALTER TABLE sibling  ADD CONSTRAINT FK_sibling_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE student_lessons ADD CONSTRAINT FK_student_lessons_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE student_lessons ADD CONSTRAINT FK_student_lessons_1 FOREIGN KEY (lesson_id) REFERENCES lesson (id);


