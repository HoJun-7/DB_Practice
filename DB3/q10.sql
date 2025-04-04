-- 1. 경민이보다 중간고사 수학점수를 높거나 같게 받은 학생들을 조회해 주세요.
SELECT * FROM students;

SELECT *
FROM middle_test
INNER JOIN students
ON students.student_id = middle_test.student_id
WHERE middle_test.math >= (
    SELECT math
    FROM middle_test
    WHERE student_id =10504
);