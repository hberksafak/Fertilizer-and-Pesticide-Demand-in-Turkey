CREATE TABLE `address` (
    `add_id` int NOT NULL,
    `delivery_address1` varchar(200) NOT NULL,
    `delivery_city` varchar(50) NOT NULL,
    `delivery_zipcode` varchar(20) NOT NULL,
    PRIMARY KEY (`add_id`)
);

CREATE TABLE `customers` (
    `cust_id` int NOT NULL,
    `cust_firstname` varchar(50) NOT NULL,
    `cust_lastname` varchar(50) NOT NULL,
    PRIMARY KEY (`cust_id`)
);

CREATE TABLE `item` (
    `item_id` varchar(10) NOT NULL,
    `sku` varchar(20) NOT NULL,
    `item_name` varchar(100) NOT NULL,
    `item_cat` varchar(100) NOT NULL,
    PRIMARY KEY (`item_id`)
);

CREATE TABLE `orders` (
    `row_id` int NOT NULL,
    `order_id` varchar(10) NOT NULL,
    `created_at` datetime NOT NULL,
    `item_id` varchar(10) NOT NULL,
    `quantity` int NOT NULL,
    `cust_id` int NOT NULL,
    `add_id` int NOT NULL,
    PRIMARY KEY (`row_id`)
);