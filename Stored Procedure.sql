USE practiceDB;

DELIMITER //

CREATE PROCEDURE student_honors(
    IN id INT, 
    IN name VARCHAR(255), 
    IN grade DECIMAL(5,2)
)
BEGIN
    SELECT student_id, student_name, student_grade,
        CASE
            WHEN student_grade >= 95.00 THEN 'With High Honors'
            WHEN student_grade BETWEEN 90.00 AND 95.00 THEN 'With Honors'
            ELSE 'No Honors'
        END AS student_honor
    FROM student_grades
    WHERE student_id = id AND student_name = name AND student_grade = grade
    ORDER BY student_grade DESC;
END //

DELIMITER ;








    
	



















































































































