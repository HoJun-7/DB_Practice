-- 아래는 STORE, PAYMENT 테이블에 대한 구조를 보여줍니다. 테이블을 수정하실 필요는 없습니다.
DESC STORE;
DESC PAYMENT;

-- EXISTS문을 응용하여, 결제금액이 5000원 이상인 가게ID, 가게이름을 조회하는 쿼리를 작성해보세요.
SELECT store_id, store_name
FROM STORE
WHERE EXISTS (
    SELECT store_id
    FROM PAYMENT 
    WHERE PAYMENT.store_id = STORE.store_id AND pay_amount >= 5000
)
ORDER BY store_id ASC; --오름차순