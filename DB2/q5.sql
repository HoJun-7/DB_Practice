-- 아래에 미션을 수행하는 코드를 작성해 봅시다.
SELECT *
FROM shareholder;

SELECT *
FROM shareholder
WHERE stock >= 100000;

SELECT stock
FROM shareholder
WHERE name LIKE 'Alexis' OR name LIKE 'Craig' OR name LIKE 'Fred';

SELECT name, stock
FROM shareholder
WHERE agree = 0 AND stock >= 100000;

SELECT name, stock
FROM shareholder
WHERE agree = 1 AND stock >= 100000;

SELECT *
FROM shareholder
WHERE stock >= 200000 OR stock <= 100000;
