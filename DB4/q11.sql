-- 아래는 PRODUCT, SELL 테이블에 대한 구조를 보여줍니다. 테이블을 수정하실 필요는 없습니다.
DESC PRODUCT;
DESC SELL;

-- 1. SELL 테이블과 PRODUCT 테이블을 상품 ID 기준으로 INNER JOIN 하는 쿼리를 작성하세요.
SELECT 
SELL_ID, 
SELLER_NAME, 
PRODUCT_NAME, 
QUANTITY
FROM SELL 
INNER JOIN PRODUCT
ON SELL.PRODUCT_ID = PRODUCT.PRODUCT_ID
ORDER BY SELL_ID ASC;

-- 2. SUM 집계 함수를 이용하여, 판매자 이름, 상품 ID 별 판매 금액을 구하는 쿼리를 작성하세요.
SELECT 
SELL_ID,
SELLER_NAME,
PRODUCT_NAME, 
QUANTITY, 
SUM(PRICE * QUANTITY) OVER(PARTITION BY SELL.SELL_ID) AS TOTAL_SALES
FROM SELL 
INNER JOIN PRODUCT
ON SELL.PRODUCT_ID = PRODUCT.PRODUCT_ID
ORDER BY SELL_ID ASC;
