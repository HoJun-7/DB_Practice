SELECT * FROM emp;
       
-- 부서번호가 40인 부서의 급여 평균보다 높게 받는 사원들의 모든 컬럼과 나이를 조회하는 쿼리를 작성해주세요.
SELECT * FROM emp , age
WHERE sal >
(SELECT AVG(sal) FROM emp WHERE deptno = 40);
