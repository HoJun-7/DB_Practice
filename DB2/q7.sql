-- INSERT문을 이용해 쿼리를 작성해 보세요.
'''
--기존의 10001이 존재할 경우 이 코드를 활용한다.
UPDATE employees 
SET superior_no = NULL 
WHERE superior_no = 10001;

DELETE
FROM employees
WHERE emp_no = 10001;
'''
INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date, superior_no)
VALUES(10001, '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26', NULL);

-- 값을 잘 넣었는지 확인하는 코드입니다. 수정하지마세요!
SELECT * FROM employees;