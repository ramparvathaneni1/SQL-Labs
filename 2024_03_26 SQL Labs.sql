-- Lab # 1 --
-- 1. How many office supplies products do we offer?
SELECT COUNT(*)
FROM PRODUCTS
WHERE CATEGORY = 'Office Supplies'; --5689

-- 2. How many chairs do we offer?
SELECT COUNT(*)
FROM PRODUCTS
WHERE SUB_CATEGORY = 'Chairs'; --619

-- 3. What is the cheapest table we offer?
SELECT *
FROM PRODUCTS
WHERE SUB_CATEGORY = 'Tables'
ORDER BY PRODUCT_COST_TO_CONSUMER
LIMIT 1; --12.18

-- 4. How many office supplies products cost more than $500?
SELECT COUNT(*)
FROM PRODUCTS
WHERE CATEGORY = 'Office Supplies'
	AND PRODUCT_COST_TO_CONSUMER > 500; --58

-- 5. How many products over $500 were technology or furniture?
SELECT COUNT(*)
FROM PRODUCTS
WHERE CATEGORY in ('Furniture','Technology')
	AND PRODUCT_COST_TO_CONSUMER > 500; --114
-- or...
SELECT COUNT(*)
FROM PRODUCTS
WHERE (CATEGORY = 'Furniture' OR CATEGORY = 'Technology')
	AND PRODUCT_COST_TO_CONSUMER > 500; --114


-- Lab # 2 --
-- 1. How many Canon copiers do we offer?
SELECT COUNT(*)
FROM PRODUCTS
WHERE CATEGORY = 'Technology'
	AND SUB_CATEGORY = 'Copiers'
	AND PRODUCT_NAME ILIKE '%Canon%'; -- 110

-- 2. How many 3D printers do we offer?
SELECT COUNT(*)
FROM PRODUCTS
WHERE SUB_CATEGORY = 'Machines'
	AND PRODUCT_NAME ILIKE '%3D%'; -- 4

-- 3. What is the most expensive Cisco phone?
SELECT *
FROM PRODUCTS
WHERE SUB_CATEGORY = 'Phones'
	AND PRODUCT_NAME ILIKE '%Cisco%'
ORDER BY PRODUCT_COST_TO_CONSUMER DESC
LIMIT 1; -- 654.24

-- 4. How many products with “TEC” in the product_id cost between $400 and $600?
SELECT COUNT(*)
FROM PRODUCTS
WHERE PRODUCT_ID ILIKE '%TEC%'
	AND PRODUCT_COST_TO_CONSUMER BETWEEN 400 AND 600; --47

-- 5. How many products that cost between $500 and $1,000 are phones, machines, or copiers?
SELECT COUNT(*)
FROM PRODUCTS
WHERE PRODUCT_COST_TO_CONSUMER BETWEEN 500 AND 1000
	AND SUB_CATEGORY in ('Phones','Machines','Copiers'); --61

