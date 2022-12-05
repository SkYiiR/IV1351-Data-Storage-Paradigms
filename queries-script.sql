CREATE VIEW lesson_per_month AS
    SELECT to_char(time, 'Mon') AS month, count(*) AS lessons_per_month from lesson 
    WHERE EXTRACT(YEAR from time) = '2022' 
    GROUP BY to_char(time, 'Mon')
    ORDER BY lessons_per_month DESC;


CREATE VIEW lessons_per_lesson_type AS
    SELECT to_char(time, 'Mon') as month, COUNT(*) as number_of_lessons, lesson_type from lesson
    WHERE EXTRACT(YEAR from time) = '2022' 
    GROUP BY month, lesson_type
    ORDER BY number_of_lessons DESC;


CREATE VIEW students_without_siblings AS
    SELECT COUNT(*) AS number_of_students_without_siblings from student
    WHERE ID NOT IN (SELECT student_id from sibling); 


CREATE VIEW students_with_siblings AS
    SELECT student_id, COUNT(*) AS number_of_siblings from sibling
    GROUP BY student_id HAVING COUNT(*) > 0
    ORDER BY student_id ASC;


CREATE VIEW lessons_per_instructor AS
    SELECT instructor_id, count(*) AS number_of_lessons FROM lesson 
    WHERE EXTRACT(YEAR FROM time) = '2022' AND EXTRACT(MONTH FROM time) = '12' 
    GROUP BY instructor_id HAVING COUNT(*) > 0 
    ORDER BY instructor_id ASC;


CREATE MATERIALIZED VIEW lessons_next_week AS
    SELECT lesson_type, genre, to_char(time, 'Day') as weekday, time,
    CASE
        WHEN number_of_spots = max_spots THEN 'Full'
        WHEN number_of_spots = max_spots - 1 THEN 'Only 1 spot left!'
        WHEN number_of_spots = max_spots  - 2 THEN 'Only 2 spots left!'
        ELSE 'More than 2 spots left'
    END as spots_left
    FROM lesson WHERE date_trunc('week', time) = date_trunc('week', now()) + interval '1 week' 
        AND lesson_type = 'ensamble' 
    ORDER BY weekday, genre;
