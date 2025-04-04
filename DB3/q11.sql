-- 아래는 EMPLOYEE 테이블에 대한 구조를 보여줍니다. 테이블을 수정하실 필요는 없습니다.
DESC EMPLOYEE;

-- 자신의 관리자의 급여보다 높거나 같은 급여를 가진 직원의 ID를 출력하는 쿼리를 작성해봅시다.
SELECT employee_id
FROM EMPLOYEE e
WHERE salary >= (
    SELECT salary
    FROM EMPLOYEE
    WHERE employee_id = e.manager_id
)
ORDER BY salary ASC; #오름차순
--ORDER BY salary DESC; #내림차순