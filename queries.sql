USE ecommerce_store;

-- 1. Get all products with their brands and categories
SELECT 
    p.product_name,
    b.brand_name,
    pc.category_name,
    p.base_price
FROM product p
JOIN brand b ON p.brand_id = b.brand_id
JOIN product_category pc ON p.category_id = pc.category_id;

-- 2. Get product variations with sizes and colors
SELECT 
    p.product_name,
    c.color_name,
    so.size_name,
    pv.price,
    pv.stock_quantity
FROM product_variation pv
JOIN product p ON pv.product_id = p.product_id
JOIN color c ON pv.color_id = c.color_id
JOIN size_option so ON pv.size_id = so.size_id;

-- 3. Get products with their attributes
SELECT 
    p.product_name,
    ac.category_name as attribute_category,
    pa.attribute_name,
    pa.attribute_value
FROM product_attribute pa
JOIN product p ON pa.product_id = p.product_id
JOIN attribute_category ac ON pa.attribute_category_id = ac.attribute_category_id;

-- 4. Get all products with their primary images
SELECT 
    p.product_name,
    pi.image_url
FROM product p
JOIN product_image pi ON p.product_id = pi.product_id
WHERE pi.is_primary = true;

-- 5. Get products by brand with their variations
SELECT 
    b.brand_name,
    p.product_name,
    COUNT(pv.variation_id) as number_of_variations
FROM brand b
JOIN product p ON b.brand_id = p.brand_id
LEFT JOIN product_variation pv ON p.product_id = pv.product_id
GROUP BY b.brand_name, p.product_name;