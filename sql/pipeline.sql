
SELECT *
FROM cleaned_property_sales;

----remove duplicates---
WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY sale_price, sale_date, borough_name,total_units, neighborhood) AS row_num
FROM cleaned_property_sales
)
SELECT *
FROM duplicate_cte
WHERE row_num > 1;

WITH duplicate_cte AS(


SELECT *,
       ROW_NUMBER() OVER(
           PARTITION BY sale_price,
                        sale_date,
                        borough_name,
                        total_units,
                        neighborhood
       ) AS row_num
FROM cleaned_property_sales
WHERE neighborhood = 'HUNTS POINT'
)
SELECT *
FROM duplicate_cte
WHERE row_num >1;


WITH duplicate_cte AS(
SELECT *, 
ROW_NUMBER() OVER(
PARTITION BY sale_date, address, apartment_number, sale_price
ORDER BY sale_date
) AS row_num
FROM cleaned_property_sales
WHERE neighborhood = 'HUNTS POINT'
)
SELECT*


FROM duplicate_cte
WHERE row_num > 1;

SELECT 
    borough_name,
    block,
    lot,
    address,
    sale_date,
    COUNT(*) AS record_count
FROM cleaned_property_sales
GROUP BY 
    borough_name, 
    block, 
    lot, 
    address, 
    sale_date
HAVING COUNT(*) > 1

SELECT *
FROM cleaned_property_sales
WHERE borough_name = 'Brooklyn'
  AND block = 6104
  AND lot = 1
  AND address = '9323 SHORE ROAD, 5C'
  AND sale_date = '2025-09-10';
	

SELECT *
FROM cleaned_property_sales
WHERE borough_name = 'Manhattan'
	AND block = 588
	AND lot = 48
	AND address = '114 CHRISTOPHER STREET, 1'
	AND sale_date = '2026-04-01';




SELECT 
    borough_name,
    block,
    lot,
    address,
    apartment_number,
    sale_date,
    sale_price,
    COUNT(*) AS duplicate_counts
FROM cleaned_property_sales
GROUP BY 
    borough_name,
    block,
    lot,
    address,
    apartment_number,
    sale_date,
    sale_price
HAVING COUNT(*) > 1
ORDER BY duplicate_counts DESC;




----standardize the data 

---remove missing rows and columns
----checking incorrect data type---