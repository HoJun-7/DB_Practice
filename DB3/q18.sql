-- 아래는 BOOK, BOOK_STOCK 테이블에 대한 구조를 보여줍니다. 테이블을 수정하실 필요는 없습니다.
DESC BOOK;
DESC BOOK_STOCK;

-- BOOK_STOCK 테이블에서 재고가 1이상인 데이터의 책이름, 책작가 정보를 조회후, BOOK테이블에 IN을 활용하여 조회하는 쿼리를 작성해봅시다.
SELECT B.book_id, B.book_name, B.book_writer, B.price
FROM BOOK B
WHERE (B.book_name, B.book_writer) IN (
    SELECT S.book_name, S.book_writer
    FROM BOOK_STOCK S
    WHERE S.stock >= 1
)
ORDER BY B.book_id ASC; --오름차순
