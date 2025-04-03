SELECT 
    MAX(price) AS max_price, 
    MIN(price) AS min_price
FROM books
WHERE publication_year BETWEEN 2001 AND 2003;