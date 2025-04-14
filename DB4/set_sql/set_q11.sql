CREATE TABLE PRODUCT(
	PRODUCT_ID INTEGER NOT NULL PRIMARY KEY,
	PRODUCT_NAME VARCHAR(100),
	PRICE INTEGER
);

INSERT INTO PRODUCT(PRODUCT_ID, PRODUCT_NAME, PRICE) VALUES
(1, "Red Car", 2000),
(2, "Blue Car", 3500),
(3, "White Car", 5000),
(4, "Black Car", 8000);

CREATE TABLE SELL(
	SELL_ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	PRODUCT_ID INTEGER,
	QUANTITY INTEGER,
	SELLER_NAME VARCHAR(100)
);

INSERT INTO SELL(PRODUCT_ID, QUANTITY, SELLER_NAME) VALUES(1, 2, 'Kim');
INSERT INTO SELL(PRODUCT_ID, QUANTITY, SELLER_NAME) VALUES(3, 1, 'Kim');
INSERT INTO SELL(PRODUCT_ID, QUANTITY, SELLER_NAME) VALUES(4, 2, 'Kim');
INSERT INTO SELL(PRODUCT_ID, QUANTITY, SELLER_NAME) VALUES(1, 1, 'Lee');
INSERT INTO SELL(PRODUCT_ID, QUANTITY, SELLER_NAME) VALUES(2, 1, 'Lee');
INSERT INTO SELL(PRODUCT_ID, QUANTITY, SELLER_NAME) VALUES(4, 3, 'Lee');
INSERT INTO SELL(PRODUCT_ID, QUANTITY, SELLER_NAME) VALUES(1, 3, 'Choi');
INSERT INTO SELL(PRODUCT_ID, QUANTITY, SELLER_NAME) VALUES(3, 11, 'Choi');