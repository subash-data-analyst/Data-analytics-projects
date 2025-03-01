create database online_shopping;
use online_shopping;


CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    address TEXT,
    phone_number VARCHAR(15),
    role ENUM('admin', 'customer') DEFAULT 'customer'
);

INSERT INTO Users (name, email, password, address, phone_number, role) 
VALUES
('John Doe', 'john.doe@example.com', 'password1', '123 Main St, City, NY', '123-456-7890', 'customer'),
('Jane Smith', 'jane.smith@example.com', 'password2', '456 Oak St, City, NY', '987-654-3210', 'customer'),
('Alice Brown', 'alice.brown@example.com', 'password3', '789 Pine St, City, NY', '555-123-4567', 'customer'),
('Bob Johnson', 'bob.johnson@example.com', 'password4', '101 Maple St, City, NY', '555-765-4321', 'customer'),
('Charlie Lee', 'charlie.lee@example.com', 'password5', '202 Birch St, City, NY', '555-234-5678', 'customer'),
('Diana White', 'diana.white@example.com', 'password6', '303 Cedar St, City, NY', '555-876-5432', 'customer'),
('Ethan Black', 'ethan.black@example.com', 'password7', '404 Elm St, City, NY', '555-345-6789', 'customer'),
('Fiona Green', 'fiona.green@example.com', 'password8', '505 Redwood St, City, NY', '555-654-3210', 'customer'),
('George Harris', 'george.harris@example.com', 'password9', '606 Ash St, City, NY', '555-432-9876', 'customer'),
('Hannah Adams', 'hannah.adams@example.com', 'password10', '707 Willow St, City, NY', '555-987-6543', 'customer'),
('Ian Scott', 'ian.scott@example.com', 'password11', '808 Pineview St, City, NY', '555-876-5432', 'customer'),
('Julia Clark', 'julia.clark@example.com', 'password12', '909 Birchwood St, City, NY', '555-765-4321', 'customer'),
('Kevin Walker', 'kevin.walker@example.com', 'password13', '1010 Oakview St, City, NY', '555-654-1234', 'customer'),
('Lily Harris', 'lily.harris@example.com', 'password14', '1111 Maplewood St, City, NY', '555-432-8765', 'customer'),
('Mason Allen', 'mason.allen@example.com', 'password15', '1212 Cedarwood St, City, NY', '555-123-9876', 'customer'),
('Natalie Young', 'natalie.young@example.com', 'password16', '1313 Redwood St, City, NY', '555-234-7654', 'customer'),
('Oscar King', 'oscar.king@example.com', 'password17', '1414 Elmwood St, City, NY', '555-345-8765', 'customer'),
('Penny Turner', 'penny.turner@example.com', 'password18', '1515 Ashwood St, City, NY', '555-765-9876', 'customer'),
('Quinn Moore', 'quinn.moore@example.com', 'password19', '1616 Willowview St, City, NY', '555-654-4321', 'customer'),
('Rachel Scott', 'rachel.scott@example.com', 'password20', '1717 Pinewood St, City, NY', '555-432-1234', 'customer'),
('Samuel Hill', 'samuel.hill@example.com', 'password21', '1818 Birchview St, City, NY', '555-987-1234', 'customer'),
('Tina Perez', 'tina.perez@example.com', 'password22', '1919 Oakwood St, City, NY', '555-234-8765', 'customer'),
('Ursula Mitchell', 'ursula.mitchell@example.com', 'password23', '2020 Maple St, City, NY', '555-345-2345', 'customer'),
('Victor Nelson', 'victor.nelson@example.com', 'password24', '2121 Cedarview St, City, NY', '555-765-8765', 'customer'),
('Wendy Carter', 'wendy.carter@example.com', 'password25', '2222 Elmview St, City, NY', '555-654-5678', 'customer'),
('Xander Wright', 'xander.wright@example.com', 'password26', '2323 Ashview St, City, NY', '555-432-2345', 'customer'),
('Yvonne Harris', 'yvonne.harris@example.com', 'password27', '2424 Willow St, City, NY', '555-987-5678', 'customer'),
('Zachary Brown', 'zachary.brown@example.com', 'password28', '2525 Pineview St, City, NY', '555-234-4321', 'customer'),
('Ava Robinson', 'ava.robinson@example.com', 'password29', '2626 Birchwood St, City, NY', '555-345-9876', 'customer'),
('Blake Collins', 'blake.collins@example.com', 'password30', '2727 Oakview St, City, NY', '555-765-2345', 'customer'),
('Caitlin Phillips', 'caitlin.phillips@example.com', 'password31', '2828 Maplewood St, City, NY', '555-654-2345', 'customer'),
('Derek Evans', 'derek.evans@example.com', 'password32', '2929 Cedarview St, City, NY', '555-432-3456', 'customer'),
('Eleanor Campbell', 'eleanor.campbell@example.com', 'password33', '3030 Redwoodview St, City, NY', '555-123-2345', 'customer'),
('Freddie Moore', 'freddie.moore@example.com', 'password34', '3131 Elmview St, City, NY', '555-234-1234', 'customer'),
('Gina Foster', 'gina.foster@example.com', 'password35', '3232 Ashwood St, City, NY', '555-876-2345', 'customer'),
('Harold Perry', 'harold.perry@example.com', 'password36', '3333 Willowview St, City, NY', '555-765-4321', 'customer'),
('Isabel Barnes', 'isabel.barnes@example.com', 'password37', '3434 Pineview St, City, NY', '555-234-6543', 'customer'),
('Jason Powell', 'jason.powell@example.com', 'password38', '3535 Birchview St, City, NY', '555-987-2345', 'customer'),
('Kelsey Davis', 'kelsey.davis@example.com', 'password39', '3636 Oakwood St, City, NY', '555-432-7654', 'customer'),
('Liam Cox', 'liam.cox@example.com', 'password40', '3737 Mapleview St, City, NY', '555-654-8765', 'customer'),
('Maya Griffin', 'maya.griffin@example.com', 'password41', '3838 Cedarwood St, City, NY', '555-765-1234', 'customer'),
('Nolan Taylor', 'nolan.taylor@example.com', 'password42', '3939 Elmwood St, City, NY', '555-432-6543', 'customer'),
('Olivia Murphy', 'olivia.murphy@example.com', 'password43', '4040 Redwoodview St, City, NY', '555-123-8765', 'customer'),
('Paul Gonzalez', 'paul.gonzalez@example.com', 'password44', '4141 Willow St, City, NY', '555-234-9876', 'customer'),
('Quincy Stevens', 'quincy.stevens@example.com', 'password45', '4242 Pine St, City, NY', '555-765-2345', 'customer'),
('Riley Ross', 'riley.ross@example.com', 'password46', '4343 Birchwood St, City, NY', '555-432-9876', 'customer'),
('Sophia Richardson', 'sophia.richardson@example.com', 'password47', '4444 Oakview St, City, NY', '555-987-3456', 'customer'),
('Travis Jenkins', 'travis.jenkins@example.com', 'password48', '4545 Maplewood St, City, NY', '555-234-5432', 'customer'),
('Uma Coleman', 'uma.coleman@example.com', 'password49', '4646 Cedar St, City, NY', '555-765-9876', 'customer'),
('Victor Miller', 'victor.miller@example.com', 'password50', '4747 Elm St, City, NY', '555-432-1234', 'customer');

CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

INSERT INTO Categories (category_name)
VALUES
('Electronics'),
('Clothing'),
('Home Appliances'),
('Books'),
('Furniture'),
('Toys'),
('Sports Equipment'),
('Automotive'),
('Health & Beauty'),
('Food & Beverages'),
('Music'),
('Movies & TV'),
('Pet Supplies'),
('Baby Products'),
('Tools & Hardware'),
('Office Supplies'),
('Jewelry'),
('Outdoor Gear'),
('Garden & Patio'),
('Computers'),
('Smartphones'),
('Laptops'),
('Cameras'),
('Headphones'),
('TVs'),
('Watches'),
('Shoes'),
('Bags & Accessories'),
('Kitchenware'),
('Lighting'),
('Fitness Equipment'),
('Crafts & Hobbies'),
('Party Supplies'),
('Travel Accessories'),
('Games & Puzzles'),
('Gifts & Occasions'),
('Seasonal Decorations'),
('Beauty Tools'),
('Skincare'),
('Hair Care'),
('Personal Care'),
('Vitamins & Supplements'),
('Cleaning Supplies'),
('Home Decor'),
('Mattresses & Bedding'),
('Furniture for Kids'),
('Car Accessories'),
('Camping & Hiking'),
('Music Instruments'),
('Office Furniture');


CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

INSERT INTO Products (name, description, price, stock_quantity, category_id)
VALUES
('Laptop', '14-inch laptop with 8GB RAM', 899.99, 50, 1),
('Smartphone', 'Latest model smartphone with 128GB storage', 699.99, 100, 1),
('T-shirt', 'Cotton T-shirt in various colors', 19.99, 200, 2),
('Blender', '500W blender for smoothies and more', 49.99, 30, 3),
('Book: Learn SQL', 'Comprehensive guide to SQL for beginners', 24.99, 150, 4),
('Sofa', 'Comfortable 3-seater sofa', 499.99, 20, 5),
('Smartwatch', 'Stylish smartwatch with fitness tracker', 159.99, 75, 1),
('Washing Machine', 'Front-load washing machine with energy efficiency', 399.99, 40, 3),
('Novel: The Great Adventure', 'A thrilling adventure novel', 15.99, 100, 4),
('Dining Table', 'Wooden dining table for 6 people', 299.99, 15, 5),
('Headphones', 'Noise-canceling headphones with Bluetooth', 129.99, 60, 1),
('Jeans', 'Denim jeans in various sizes', 39.99, 150, 2),
('Microwave Oven', 'Compact microwave oven with defrost feature', 89.99, 50, 3),
('Kids’ Storybook', 'Beautifully illustrated storybook for children', 9.99, 120, 4),
('Office Chair', 'Ergonomic office chair for all-day comfort', 149.99, 80, 5),
('Gaming Console', 'Latest gaming console with exclusive games', 499.99, 25, 1),
('Jacket', 'Warm winter jacket for cold weather', 69.99, 100, 2),
('Dishwasher', 'Energy-efficient dishwasher with multiple settings', 349.99, 30, 3),
('Cookbook', 'Delicious recipes for home cooks', 19.99, 110, 4),
('Queen Mattress', 'Comfortable queen-size mattress with memory foam', 499.99, 10, 5),
('Bluetooth Speaker', 'Portable Bluetooth speaker with 10 hours of battery life', 59.99, 150, 1),
('Sweater', 'Cozy sweater made from wool blend', 39.99, 180, 2),
('Air Fryer', 'Healthier cooking with less oil', 79.99, 70, 3),
('History Book', 'Insightful history book on ancient civilizations', 29.99, 90, 4),
('Recliner Chair', 'Recliner chair with plush cushioning for comfort', 349.99, 12, 5),
('Smart Light Bulbs', 'LED smart light bulbs that can be controlled remotely', 24.99, 200, 1),
('Hoodie', 'Comfortable hoodie for casual wear', 29.99, 160, 2),
('Toaster', '2-slice toaster with adjustable browning control', 39.99, 40, 3),
('Self-Help Book', 'Motivational book for personal growth', 14.99, 80, 4),
('Coffee Table', 'Modern coffee table with glass top', 199.99, 25, 5),
('Tablet', '10-inch tablet with 64GB storage and Wi-Fi', 299.99, 40, 1),
('Dress', 'Elegant dress for formal occasions', 89.99, 150, 2),
('Electric Kettle', '1.5L electric kettle with auto-shutoff feature', 29.99, 100, 3),
('Biography: Life of a Legend', 'Biography of a famous historical figure', 19.99, 70, 4),
('Bed Frame', 'Sturdy metal bed frame for a queen-sized mattress', 199.99, 15, 5),
('Wireless Mouse', 'Ergonomic wireless mouse for comfort', 19.99, 120, 1),
('Scarf', 'Soft and warm scarf for winter', 14.99, 200, 2),
('Pressure Cooker', '6-liter pressure cooker with safety valve', 49.99, 60, 3),
('Science Fiction Novel', 'A captivating science fiction story', 22.99, 90, 4),
('Nightstand', 'Compact nightstand with storage drawer', 89.99, 40, 5),
('Electric Guitar', 'Electric guitar with amp and accessories', 299.99, 10, 1),
('Boots', 'Durable boots for outdoor activities', 79.99, 130, 2),
('Coffee Maker', 'Automatic coffee maker with brew strength options', 79.99, 50, 3),
('Mystery Novel', 'Suspenseful mystery novel with unexpected twists', 18.99, 110, 4),
('Lounge Chair', 'Comfortable lounge chair for relaxing', 299.99, 20, 5),
('Laptop Bag', 'Stylish laptop bag with multiple compartments', 39.99, 150, 1),
('Sweatpants', 'Soft sweatpants for casual wear', 24.99, 200, 2),
('Portable Heater', 'Compact portable heater for personal use', 59.99, 70, 3),
('Cookware Set', 'Non-stick cookware set with frying pan and pots', 149.99, 50, 3),
('Travel Backpack', 'Durable backpack for hiking and travel', 69.99, 120, 2),
('Electric Shaver', 'Rechargeable electric shaver for a smooth shave', 39.99, 80, 1),
('Kids’ Backpack', 'Colorful backpack for kids with cartoon design', 19.99, 150, 2),
('Toy Car', 'Battery-operated toy car for kids', 15.99, 300, 10);


CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_price DECIMAL(10, 2) NOT NULL,
    status ENUM('Pending', 'Shipped', 'Delivered', 'Canceled') DEFAULT 'Pending',
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Orders (user_id, total_price, status)
VALUES
(1, 919.97, 'Pending'),
(2, 799.99, 'Shipped'),
(3, 29.98, 'Delivered'),
(4, 649.99, 'Pending'),
(5, 159.99, 'Shipped'),
(6, 499.99, 'Delivered'),
(7, 299.99, 'Pending'),
(8, 99.97, 'Shipped'),
(9, 129.99, 'Delivered'),
(10, 89.99, 'Pending'),
(11, 359.99, 'Shipped'),
(12, 749.99, 'Delivered'),
(13, 229.99, 'Pending'),
(14, 189.99, 'Shipped'),
(15, 599.99, 'Delivered'),
(16, 249.99, 'Pending'),
(17, 459.99, 'Shipped'),
(18, 129.99, 'Delivered'),
(19, 359.99, 'Pending'),
(20, 499.99, 'Shipped'),
(21, 149.99, 'Delivered'),
(22, 299.99, 'Pending'),
(23, 159.99, 'Shipped'),
(24, 499.99, 'Delivered'),
(25, 89.97, 'Pending'),
(26, 199.99, 'Shipped'),
(27, 449.99, 'Delivered'),
(28, 229.99, 'Pending'),
(29, 149.99, 'Shipped'),
(30, 349.99, 'Delivered'),
(31, 299.99, 'Pending'),
(32, 599.99, 'Shipped'),
(33, 89.99, 'Delivered'),
(34, 199.99, 'Pending'),
(35, 349.99, 'Shipped'),
(36, 169.99, 'Delivered'),
(37, 599.99, 'Pending'),
(38, 289.99, 'Shipped'),
(39, 169.99, 'Delivered'),
(40, 99.99, 'Pending'),
(41, 149.99, 'Shipped'),
(42, 379.99, 'Delivered'),
(43, 279.99, 'Pending'),
(44, 129.99, 'Shipped'),
(45, 439.99, 'Delivered'),
(46, 269.99, 'Pending'),
(47, 159.99, 'Shipped'),
(48, 429.99, 'Delivered'),
(49, 99.97, 'Pending'),
(50, 199.99, 'Pending');


CREATE TABLE Order_Items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    price_at_purchase DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Order_Items (order_id, product_id, quantity, price_at_purchase)
VALUES
(1, 1, 1, 899.99),
(1, 2, 1, 19.99),
(2, 3, 2, 19.99),
(3, 4, 1, 49.99),
(4, 5, 1, 24.99),
(4, 6, 1, 499.99),
(5, 7, 1, 159.99),
(6, 8, 1, 399.99),
(7, 9, 3, 9.99),
(8, 10, 2, 99.97),
(9, 11, 1, 149.99),
(10, 12, 1, 359.99),
(11, 13, 1, 649.99),
(12, 14, 1, 249.99),
(13, 15, 2, 89.99),
(14, 16, 1, 199.99),
(15, 17, 1, 599.99),
(16, 18, 1, 249.99),
(17, 19, 2, 229.99),
(18, 20, 1, 499.99),
(19, 21, 1, 129.99),
(20, 22, 2, 149.99),
(21, 23, 1, 199.99),
(22, 24, 3, 89.97),
(23, 25, 1, 59.99),
(24, 26, 1, 149.99),
(25, 27, 1, 459.99),
(26, 28, 2, 169.99),
(27, 29, 1, 349.99),
(28, 30, 1, 129.99),
(29, 31, 1, 159.99),
(30, 32, 2, 449.99),
(31, 33, 1, 229.99),
(32, 34, 1, 159.99),
(33, 35, 2, 79.99),
(34, 36, 1, 199.99),
(35, 37, 3, 89.99),
(36, 38, 1, 179.99),
(37, 39, 2, 129.99),
(38, 40, 1, 79.99),
(39, 41, 1, 149.99),
(40, 42, 1, 379.99),
(41, 43, 1, 289.99),
(42, 44, 2, 69.99),
(43, 45, 2, 149.99),
(44, 46, 1, 439.99),
(45, 47, 2, 159.99),
(46, 48, 1, 429.99),
(47, 49, 1, 99.97),
(48, 50, 1, 199.99),
(49, 1, 1, 899.99),
(50, 10, 1, 15.99);


CREATE TABLE Shopping_Cart (
    cart_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    product_id INT,
    quantity INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Shopping_Cart (user_id, product_id, quantity)
VALUES
(1, 1, 2),
(1, 3, 1),
(2, 5, 1),
(3, 6, 2),
(4, 7, 1),
(5, 8, 2),
(6, 9, 1),
(7, 10, 3),
(8, 11, 1),
(9, 12, 2),
(10, 13, 1),
(11, 14, 2),
(12, 15, 1),
(13, 16, 3),
(14, 17, 1),
(15, 18, 2),
(16, 19, 1),
(17, 20, 2),
(18, 21, 1),
(19, 22, 1),
(20, 23, 3),
(21, 24, 1),
(22, 25, 2),
(23, 26, 1),
(24, 27, 2),
(25, 28, 1),
(26, 29, 3),
(27, 30, 2),
(28, 31, 1),
(29, 32, 2),
(30, 33, 1),
(31, 34, 1),
(32, 35, 2),
(33, 36, 3),
(34, 37, 1),
(35, 38, 2),
(36, 39, 1),
(37, 40, 3),
(38, 41, 1),
(39, 42, 2),
(40, 43, 1),
(41, 44, 1),
(42, 45, 2),
(43, 46, 1),
(44, 47, 3),
(45, 48, 1),
(46, 49, 2),
(47, 50, 1),
(48, 1, 3),
(49, 2, 1),
(50, 8, 1);


CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    amount DECIMAL(10, 2) NOT NULL,
    payment_method ENUM('Credit Card', 'PayPal', 'Bank Transfer') NOT NULL,
    status ENUM('Success', 'Failed') DEFAULT 'Success',
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Payments (order_id, amount, payment_method, status)
VALUES
(1, 919.97, 'Credit Card', 'Success'),
(2, 799.99, 'PayPal', 'Success'),
(3, 29.98, 'Bank Transfer', 'Failed'),
(4, 649.99, 'Credit Card', 'Success'),
(5, 159.99, 'PayPal', 'Success'),
(6, 499.99, 'Credit Card', 'Success'),
(7, 299.99, 'Bank Transfer', 'Failed'),
(8, 99.97, 'PayPal', 'Success'),
(9, 129.99, 'Credit Card', 'Success'),
(10, 89.99, 'Bank Transfer', 'Failed'),
(11, 359.99, 'Credit Card', 'Success'),
(12, 749.99, 'PayPal', 'Success'),
(13, 229.99, 'Credit Card', 'Success'),
(14, 189.99, 'Bank Transfer', 'Failed'),
(15, 599.99, 'Credit Card', 'Success'),
(16, 249.99, 'PayPal', 'Success'),
(17, 459.99, 'Bank Transfer', 'Failed'),
(18, 129.99, 'Credit Card', 'Success'),
(19, 359.99, 'PayPal', 'Success'),
(20, 499.99, 'Credit Card', 'Success'),
(21, 149.99, 'Bank Transfer', 'Failed'),
(22, 299.99, 'Credit Card', 'Success'),
(23, 159.99, 'PayPal', 'Success'),
(24, 499.99, 'Credit Card', 'Success'),
(25, 89.97, 'Bank Transfer', 'Failed'),
(26, 199.99, 'PayPal', 'Success'),
(27, 449.99, 'Credit Card', 'Success'),
(28, 229.99, 'PayPal', 'Success'),
(29, 149.99, 'Bank Transfer', 'Failed'),
(30, 349.99, 'Credit Card', 'Success'),
(31, 299.99, 'PayPal', 'Success'),
(32, 599.99, 'Bank Transfer', 'Failed'),
(33, 89.99, 'Credit Card', 'Success'),
(34, 199.99, 'PayPal', 'Success'),
(35, 349.99, 'Credit Card', 'Success'),
(36, 169.99, 'Bank Transfer', 'Failed'),
(37, 599.99, 'PayPal', 'Success'),
(38, 289.99, 'Credit Card', 'Success'),
(39, 169.99, 'Bank Transfer', 'Failed'),
(40, 79.99, 'PayPal', 'Success'),
(41, 149.99, 'Credit Card', 'Success'),
(42, 379.99, 'Bank Transfer', 'Failed'),
(43, 279.99, 'PayPal', 'Success'),
(44, 129.99, 'Credit Card', 'Success'),
(45, 439.99, 'Bank Transfer', 'Failed'),
(46, 269.99, 'PayPal', 'Success'),
(47, 159.99, 'Credit Card', 'Success'),
(48, 429.99, 'Bank Transfer', 'Failed'),
(49, 99.97, 'PayPal', 'Success'),
(50, 199.99, 'Credit Card', 'Success');


CREATE TABLE Shipping (
    shipping_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    shipping_address TEXT,
    shipping_status ENUM('In Transit', 'Delivered', 'Pending') DEFAULT 'Pending',
    shipping_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Shipping (order_id, shipping_address, shipping_status)
VALUES
(1, '123 Main St, City, NY', 'In Transit'),
(2, '456 Oak St, City, NY', 'Delivered'),
(3, '789 Pine St, City, NY', 'Delivered'),
(4, '101 Maple St, City, NY', 'In Transit'),
(5, '202 Birch St, City, NY', 'Delivered'),
(6, '303 Cedar St, City, NY', 'In Transit'),
(7, '404 Elm St, City, NY', 'Pending'),
(8, '505 Pine St, City, NY', 'Delivered'),
(9, '606 Oak St, City, NY', 'Pending'),
(10, '707 Maple St, City, NY', 'In Transit'),
(11, '808 Cedar St, City, NY', 'Delivered'),
(12, '909 Birch St, City, NY', 'Pending'),
(13, '1001 Elm St, City, NY', 'In Transit'),
(14, '1102 Pine St, City, NY', 'Delivered'),
(15, '1203 Oak St, City, NY', 'Pending'),
(16, '1304 Maple St, City, NY', 'In Transit'),
(17, '1405 Cedar St, City, NY', 'Delivered'),
(18, '1506 Birch St, City, NY', 'In Transit'),
(19, '1607 Elm St, City, NY', 'Pending'),
(20, '1708 Pine St, City, NY', 'Delivered'),
(21, '1809 Oak St, City, NY', 'Pending'),
(22, '1901 Maple St, City, NY', 'In Transit'),
(23, '2002 Cedar St, City, NY', 'Delivered'),
(24, '2103 Birch St, City, NY', 'In Transit'),
(25, '2204 Elm St, City, NY', 'Delivered'),
(26, '2305 Pine St, City, NY', 'Pending'),
(27, '2406 Oak St, City, NY', 'In Transit'),
(28, '2507 Maple St, City, NY', 'Delivered'),
(29, '2608 Cedar St, City, NY', 'In Transit'),
(30, '2709 Birch St, City, NY', 'Pending'),
(31, '2801 Elm St, City, NY', 'Delivered'),
(32, '2902 Pine St, City, NY', 'In Transit'),
(33, '3003 Oak St, City, NY', 'Pending'),
(34, '3104 Maple St, City, NY', 'Delivered'),
(35, '3205 Cedar St, City, NY', 'In Transit'),
(36, '3306 Birch St, City, NY', 'Pending'),
(37, '3407 Elm St, City, NY', 'Delivered'),
(38, '3508 Pine St, City, NY', 'In Transit'),
(39, '3609 Oak St, City, NY', 'Delivered'),
(40, '3701 Maple St, City, NY', 'Pending'),
(41, '3802 Cedar St, City, NY', 'Delivered'),
(42, '3903 Birch St, City, NY', 'In Transit'),
(43, '4004 Elm St, City, NY', 'Pending'),
(44, '4105 Pine St, City, NY', 'Delivered'),
(45, '4206 Oak St, City, NY', 'In Transit'),
(46, '4307 Maple St, City, NY', 'Pending'),
(47, '4408 Cedar St, City, NY', 'Delivered'),
(48, '4509 Birch St, City, NY', 'In Transit'),
(49, '4601 Elm St, City, NY', 'Pending'),
(50, '4702 Pine St, City, NY', 'Pending');

select*from Shopping_Cart ;
select*from Shipping;
select*from Users;
select*from Categories;
select*from Products;
select*from Orders;
select*from Order_Items;
select*from Payments;

SELECT AVG(DATEDIFF(actual_delivery_date, shipping_date)) AS average_delivery_time
FROM Shipping
WHERE shipping_status = 'Delivered'
LIMIT 0, 50000;


select a.user_id,a.name,b.user_id,b.status,c.user_id,v.price
from users a
inner join orders b
on a.user_id=b.user_id
inner join Shopping_Cart c
on c.user_id=a.user_id
inner join Products v
on c.product_id=v.product_id;



SELECT user_id, total_price, status
FROM Orders 
WHERE user_id = 1;

SELECT description
FROM Products 
WHERE name = 'dress';

 -- Get all shipments that are "In Transit"
SELECT * FROM Shipping
WHERE shipping_status = 'In Transit';

-- Get all shipments that are "Delivered"
SELECT * FROM Shipping
WHERE shipping_status = 'Delivered';


-- Get shipments that are still "Pending"
SELECT * FROM Shipping
WHERE shipping_status = 'Pending';

-- Get the most recent shipment (based on the shipping date)
SELECT * FROM Shipping
ORDER BY shipping_date DESC
LIMIT 1;

-- Get the number of shipments by status
SELECT shipping_status, COUNT(shipping_status) AS shipment_count
FROM Shipping
GROUP BY shipping_status;

SELECT shipping_status, COUNT(*) AS shipment_count
FROM Shipping
GROUP BY shipping_status;

-- Get all shipments for a specific order (e.g., order_id = 1):
SELECT * FROM Shipping
WHERE order_id = 1;

-- Get shipments by a specific shipping address (e.g., "123 Main St, City, NY"):
SELECT * FROM Shipping
WHERE shipping_address = '123 Main St, City, NY';

-- Get the total number of shipments made
SELECT COUNT(*) AS total_shipments FROM Shipping;

-- Get shipments between two dates (e.g., after January 1, 2025):
SELECT * FROM Shipping
WHERE shipping_date > '2025-01-01';

 -- Update the shipping status of a shipment (e.g., update shipment with shipping_id = 1 to "Delivered")
 UPDATE Shipping
SET shipping_status = 'Delivered'
WHERE shipping_id = 1;

 -- Delete a specific shipment (e.g., shipment with shipping_id = 50):
 DELETE FROM Shipping
WHERE shipping_id = 50;

SELECT order_id, shipping_status FROM Shipping
WHERE shipping_status = 'Pending';

SELECT MIN(shipping_date) AS earliest_shipment_date FROM Shipping;



-- Join the Shipping table with the Orders table to get detailed order information
 -- (e.g., assuming Orders table has columns like order_id, customer_name, etc.):
 SELECT Shipping.shipping_id, Shipping.shipping_address, Shipping.shipping_status, Orders.order_id
FROM Shipping
INNER JOIN Orders ON Shipping.order_id = Orders.order_id;

SELECT shipping_address, COUNT(*) AS shipment_count
FROM Shipping
GROUP BY shipping_address
HAVING COUNT(*)>0;

SELECT * FROM Users WHERE email = 'john.doe@example.com';

SELECT * FROM Products 
WHERE category_id = (SELECT category_id FROM Categories WHERE category_name = 'Electronics');

SELECT COUNT(*) AS total_orders FROM Orders WHERE user_id = 1;

-- Get details of an order (including products) for a specific order ID
SELECT O.order_id, O.order_date, O.total_price, O.status, P.name AS product_name, OI.quantity, OI.price_at_purchase
FROM Orders O
JOIN Order_Items OI ON O.order_id = OI.order_id
JOIN Products P ON OI.product_id = P.product_id
WHERE O.order_id = 1;

-- Get the total sales for a specific product
SELECT SUM(OI.quantity * OI.price_at_purchase) AS total_sales
FROM Order_Items OI
WHERE OI.product_id = 1;

SELECT * FROM Orders WHERE status = 'Pending';

SELECT * FROM Products WHERE stock_quantity > 3;

UPDATE Users SET address = 'New Address, City, NY' WHERE user_id = 1;

DELETE FROM Orders WHERE order_id = 1;

-- List all orders that a customer has made, with their product details:
SELECT O.order_id, O.order_date, O.total_price, P.name AS product_name, OI.quantity, OI.price_at_purchase
FROM Orders O
JOIN Order_Items OI 
ON O.order_id = OI.order_id
JOIN Products P 
ON OI.product_id = P.product_id
WHERE O.user_id = 1;

-- Get the number of orders placed for each product:
SELECT P.name, SUM(OI.quantity) AS total_orders
FROM Order_Items OI
JOIN Products P 
ON OI.product_id = P.product_id
GROUP BY P.name;

-- Get the products with their categories:
SELECT P.name, C.category_name
FROM Products P
JOIN Categories C 
ON P.category_id = C.category_id;

 -- Get all users who have placed an order with a specific status (e.g., Shipped):
 SELECT DISTINCT U.name, U.email
FROM Users U
JOIN Orders O 
ON U.user_id = O.user_id
WHERE O.status = 'Shipped';


-- Get products with their prices that are in the 'Furniture' category:
SELECT name, price
FROM Products
WHERE category_id = (SELECT category_id FROM Categories WHERE category_name = 'Furniture');


-- Get the average price of products in each category
SELECT C.category_name, AVG(P.price) AS average_price
FROM Products P
JOIN Categories C 
ON P.category_id = C.category_id
GROUP BY C.category_name;

SELECT * FROM Products WHERE stock_quantity > 100;

-- no.of product in each category
SELECT C.category_name, COUNT(P.product_id) AS product_count
FROM Products P
JOIN Categories C 
ON P.category_id = C.category_id
GROUP BY C.category_name;

-- Get all users who have made an order above a certain total price (e.g., above $500):
SELECT DISTINCT U.name, U.email
FROM Users U
JOIN Orders O 
ON U.user_id = O.user_id
WHERE O.total_price > 500;

-- List products ordered by most recent orders:
SELECT P.name, O.order_date
FROM Products P
JOIN Order_Items OI 
ON P.product_id = OI.product_id
JOIN Orders O 
ON OI.order_id = O.order_id
ORDER BY O.order_date DESC;


CREATE INDEX idx_user_id 
ON users(user_ID); -- index used to Performance Improvement: Indexing the Student_ID column will make queries that
                    --  filter or sort by Student_ID faster, especially if the table contains a large number of rows.
                    -- Indexes are used to speed up the retrieval of data from a database table.

