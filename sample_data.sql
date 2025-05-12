USE ecommerce_store;

-- Insert brands
INSERT INTO brand (brand_name, brand_description) VALUES
('Nike', 'Global sports and athletic wear brand'),
('Adidas', 'Sports and lifestyle brand'),
('Samsung', 'Electronics and technology company'),
('Levi''s', 'Classic denim and casual wear brand');

-- Insert product categories
INSERT INTO product_category (category_name, category_description, parent_category_id) VALUES
('Electronics', 'Electronic devices and accessories', NULL),
('Clothing', 'Apparel and fashion items', NULL),
('Shoes', 'Footwear and sneakers', NULL);

-- Insert sub-categories
INSERT INTO product_category (category_name, category_description, parent_category_id) VALUES
('Smartphones', 'Mobile phones and accessories', 1),
('T-Shirts', 'Casual and sports t-shirts', 2),
('Jeans', 'Denim pants and shorts', 2);

-- Insert colors
INSERT INTO color (color_name, color_code) VALUES
('Black', '#000000'),
('White', '#FFFFFF'),
('Navy Blue', '#000080'),
('Red', '#FF0000'),
('Gray', '#808080');

-- Insert size categories
INSERT INTO size_category (category_name, description) VALUES
('Clothing Sizes', 'Standard clothing sizes'),
('Shoe Sizes', 'Footwear sizes'),
('Screen Sizes', 'Display sizes for electronics');

-- Insert size options
INSERT INTO size_option (size_category_id, size_name, size_order) VALUES
(1, 'S', 1),
(1, 'M', 2),
(1, 'L', 3),
(1, 'XL', 4),
(2, '38', 1),
(2, '39', 2),
(2, '40', 3),
(2, '41', 4);

-- Insert products
INSERT INTO product (brand_id, category_id, product_name, description, base_price) VALUES
(1, 5, 'Nike Sport T-Shirt', 'Comfortable athletic t-shirt with moisture-wicking technology', 29.99),
(2, 4, 'Samsung Galaxy S21', 'Flagship smartphone with advanced camera system', 799.99),
(4, 6, 'Levi''s 501 Original', 'Classic straight fit jeans', 89.99);

-- Insert product images
INSERT INTO product_image (product_id, image_url, is_primary) VALUES
(1, 'https://example.com/images/nike-tshirt-front.jpg', true),
(1, 'https://example.com/images/nike-tshirt-back.jpg', false),
(2, 'https://example.com/images/samsung-s21-black.jpg', true),
(3, 'https://example.com/images/levis-501-blue.jpg', true);

-- Insert product variations
INSERT INTO product_variation (product_id, color_id, size_id, sku, price, stock_quantity) VALUES
(1, 1, 1, 'NIKE-TS-BLK-S', 29.99, 100),
(1, 1, 2, 'NIKE-TS-BLK-M', 29.99, 150),
(2, 1, 8, 'SAM-S21-BLK-61', 799.99, 50),
(3, 3, 2, 'LEV-501-NVY-M', 89.99, 75);

-- Insert attribute categories
INSERT INTO attribute_category (category_name, description) VALUES
('Physical', 'Physical characteristics of the product'),
('Technical', 'Technical specifications'),
('Material', 'Product material information');

-- Insert attribute types
INSERT INTO attribute_type (type_name, description) VALUES
('text', 'Text values'),
('number', 'Numeric values'),
('boolean', 'Yes/No values');

-- Insert product attributes
INSERT INTO product_attribute (product_id, attribute_category_id, attribute_type_id, attribute_name, attribute_value) VALUES
(1, 1, 1, 'Material', 'Cotton Blend'),
(1, 1, 2, 'Weight', '0.2kg'),
(2, 2, 2, 'RAM', '8GB'),
(2, 2, 2, 'Storage', '256GB'),
(3, 1, 1, 'Material', 'Denim'),
(3, 1, 2, 'Weight', '0.6kg');