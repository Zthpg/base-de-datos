CREATE DATABASE `laBaseBB`;
USE `laBaseBB`;
CREATE TABLE `Categories` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL UNIQUE
);
DROP TABLE IF EXISTS `Product`;
CREATE TABLE `Product` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL,
  `description` TEXT NOT NULL,
  `img_url` VARCHAR(255),
  `category_id` INT NOT NULL,
  `stock` INT NOT NULL,
  `price` DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (`category_id`) REFERENCES `Categories`(`id`)
);
-- Create a new table for product images
CREATE TABLE `ProductImages` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `product_id` INT NOT NULL,
  `img_url` VARCHAR(255),
  FOREIGN KEY (`product_id`) REFERENCES `Product`(`id`)
);
CREATE TABLE `Comments` (
    id INT AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE `User` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(255),
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `password` VARCHAR(255) NOT NULL
);

-- Insert into Categories
INSERT INTO `Categories` (`name`) VALUES ('iPhone');
INSERT INTO `Categories` (`name`) VALUES ('AirPods');
INSERT INTO `Categories` (`name`) VALUES ('Macbooks');
INSERT INTO `Categories` (`name`) VALUES ('HomePod');
INSERT INTO `Categories` (`name`) VALUES ('Apple TV');

-- Insert into Product
INSERT INTO `Product` (`name`, `description`, `img_url`, `category_id`, `stock`, `price`) VALUES ('iPhone 15 Pro Max', 'Latest Apple iPhone', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSZMxBDg5liUTSED62AYQHXSe4TYrbZ3xtpE1HNEVdqMtJ81tfKRDIehqwoADgLT7gQH6GlTFQEVElLAe1lZDjABTYqlwK5', 1, 10, 1099.99);
INSERT INTO `Product` (`name`, `description`, `img_url`, `category_id`, `stock`, `price`) VALUES ('iPhone 15', 'Apple iPhone 15', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRKj8NxFZGTq2Duw3kub7bAM6b-7zsd_1oF5GkGsknP4ex-A8Dk', 1, 10, 699.99);
INSERT INTO `Product` (`name`, `description`, `img_url`, `category_id`, `stock`, `price`) VALUES ('iPhone 12 Mini', 'Apple iPhone 12 Mini', 'https://images-na.ssl-images-amazon.com/images/I/71PqfLHdg-L._MCnd_AC_SR462,462_.jpg', 1, 15, 699.99);
INSERT INTO `Product` (`name`, `description`, `img_url`, `category_id`, `stock`, `price`) VALUES ('iPhone SE', 'Apple iPhone SE', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSoYINc3WyQ56BKjebzYif-cvIZVurBBNdMSpthpbbFVZhiYd6oVA2zEYRmOBVbpezLszTlOCky-uOUtfIJtxHz8y55Z3Itdg', 1, 20, 399.99);
INSERT INTO `Product` (`name`, `description`, `img_url`, `category_id`, `stock`, `price`) VALUES ('AirPods Max', 'Over-ear headphones', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSThDD_LIMZ7AtBzslqDJVYURDp1S2eKPO6IhJ4QnB8IzUO_aEAU_BDMr3kAbq4aSXoRLNZP_nc_4f6m2VSMe6hA1UI9A85dg', 2, 10, 549.00);
INSERT INTO `Product` (`name`, `description`, `img_url`, `category_id`, `stock`, `price`) VALUES ('AirPods 3rd Generation', 'Latest AirPods', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSfcQNMWTa_GgWItHemvTZ7MUJYK7EWYQUWxwGDzHwDLci1HJw', 2, 15, 179.00);
INSERT INTO `Product` (`name`, `description`, `img_url`, `category_id`, `stock`, `price`) VALUES ('AirPods 2nd Generation', '2nd Generation AirPods', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MV7N2?wid=1144&hei=1144&fmt=jpeg&qlt=95&.v=1551489688005', 2, 20, 129.00);
INSERT INTO `Product` (`name`, `description`, `img_url`, `category_id`, `stock`, `price`) VALUES ('Macbook Air', 'Apple Macbook Air', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mba13-midnight-select-202402?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1708367688034', 3, 10, 999.99);
INSERT INTO `Product` (`name`, `description`, `img_url`, `category_id`, `stock`, `price`) VALUES ('Macbook Pro 13"', '13-inch Macbook Pro', 'https://m.media-amazon.com/images/I/81rNO0tZ+EL.jpg', 3, 15, 1299.99);
INSERT INTO `Product` (`name`, `description`, `img_url`, `category_id`, `stock`, `price`) VALUES ('Macbook Pro 16"', '16-inch Macbook Pro', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp16-spaceblack-select-202310?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1697311054290', 3, 20, 2399.99);
INSERT INTO `Product` (`name`, `description`, `img_url`, `category_id`, `stock`, `price`) VALUES ('AirPods Pro', 'Wireless Bluetooth Earbuds', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MTJV3?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1694014871985', 2, 20, 249.99);
INSERT INTO `Product` (`name`, `description`, `img_url`, `category_id`, `stock`, `price`) VALUES ('HomePod', 'Original HomePod', 'https://i.pcmag.com/imagery/reviews/03HSpy3Nap2pS7TE922Giga-16.fit_lim.size_1050x591.v1569483484.jpg', 4, 10, 299.99);
INSERT INTO `Product` (`name`, `description`, `img_url`, `category_id`, `stock`, `price`) VALUES ('HomePod Mini Black', 'HomePod Mini in Black', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmnJKUoHeG1rv20uVmAbMouQU0uf0C1x7sLiwYTLUIsQ&s', 4, 15, 99.99);
INSERT INTO `Product` (`name`, `description`, `img_url`, `category_id`, `stock`, `price`) VALUES ('HomePod Mini White', 'HomePod Mini in White', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/homepod-mini-select-white-202110_FV1_FMT_WHH?wid=1214&hei=566&fmt=jpeg&qlt=90&.v=1633105460000', 4, 20, 99.99);
INSERT INTO `Product` (`name`, `description`, `img_url`, `category_id`, `stock`, `price`) VALUES ('Apple TV 4K', 'Streaming Device', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/apple-tv-4k-hero-select-202210_FMT_WHH?wid=640&hei=600&fmt=jpeg&qlt=90&.v=1664896361164', 5, 15, 179.99);
INSERT INTO `Product` (`name`, `description`, `img_url`, `category_id`, `stock`, `price`) VALUES ('Apple TV HD', 'HD Apple TV', 'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/refurb-appletv-4gen-gallery?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=0', 5, 10, 149.99);

-- Insert into ProductImages
INSERT INTO `ProductImages` (`product_id`, `img_url`) VALUES (1, 'https://www.apple.com/newsroom/images/2023/09/apple-unveils-iphone-15-pro-and-iphone-15-pro-max/article/Apple-iPhone-15-Pro-lineup-hero-230912_Full-Bleed-Image.jpg.xlarge.jpg');
