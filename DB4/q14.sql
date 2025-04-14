-- 아래는 STUDENT 테이블에 대한 구조를 보여줍니다. 테이블을 수정하실 필요는 없습니다.
DESC STUDENT;

-- 학생들의 수학, 물리, 화학 점수의 총합 내림차순 기준으로 3개의 그룹으로 나누어 조회하는 쿼리를 작성하세요.
SELECT 
ID, 
MATH, 
PHYSICS, 
CHEMISTRY,
NTILE(3) OVER(ORDER BY SCORE_SUM DESC) AS NT
FROM (
    SELECT 
    ID, 
    MATH, 
    PHYSICS, 
    CHEMISTRY,
    (MATH + PHYSICS + CHEMISTRY) AS SCORE_SUM
    FROM STUDENT
) AS subquery;

--GROUP BY를 한 버전 
SELECT 
ID, 
MATH, 
PHYSICS, 
CHEMISTRY,
NTILE(3) OVER(ORDER BY SCORE_SUM DESC) AS NT
FROM (
    SELECT 
    ID, 
    MATH, 
    PHYSICS, 
    CHEMISTRY,
    SUM(MATH + PHYSICS + CHEMISTRY) AS SCORE_SUM
    FROM STUDENT
    GROUP BY ID, MATH, PHYSICS, CHEMISTRY
) AS subquery;