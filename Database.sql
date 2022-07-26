--
-- Host: localhost    Database: shopping_cart
-- 

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
INSERT INTO `admin` VALUES (3,'deepanshu','12345'),(6,'tarun','123'),(7,'manoj','123'),(11,'admin','123'),(12,'harshita','admin'),(13,'gaurav','admin123'),(14,'ritesh','123');

UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(45) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `product_price` float NOT NULL,
  `discount_amt` float NOT NULL,
  `username` varchar(45) NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
INSERT INTO `cart` VALUES (89,'white sofa','1',4999,20,'admin','https://www.ulcdn.net/images/products/309981/original/FNSF52WCNW3_-_main_1.png?1606711207',28);

UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) NOT NULL,
  `category_type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
INSERT INTO `category` VALUES (1,'light','light'),(2,'mobile','accesories');
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `product_type` varchar(45) NOT NULL,
  `product_price` int NOT NULL,
  `product_desc` varchar(45) NOT NULL,
  `stocks` int NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
INSERT INTO `product` VALUES (54,'London-Bed','Bed',400,'London bed for comfort',99,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrh8Oju9sfDVcJSShbAM_YIZFx9ODae4cyiQ&usqp=CAU'),(55,'King-Queen bed','Bed',500,'Bed like a king- queen',98,'https://images.eq3.com/product-definitions/cjzcwjmin0bfe0166a8sbjpd4/instance/ck1b4r68806pr0194dc7g5jlq/THUMBNAIL/e1bcda03-d631-4791-b321-4cee039768e8.jpg'),(56,'Windemere','Bed',300,'Best bed ',99,'https://bedarena.co.uk/602-large_default/windemere-double-bed.jpg'),(57,'Wooden Chair','Chair',200,'Best Wooden Chair',99,'https://static8.depositphotos.com/1022715/834/i/950/depositphotos_8346493-stock-photo-wooden-chair-over-white-with.jpg'),(58,'Blue Chair','Chair',400,'blue color chair ',100,'https://media.istockphoto.com/photos/turquoise-arm-chair-isolated-on-white-background-front-view-of-picture-id1199428736?k=20&m=1199428736&s=612x612&w=0&h=vRS-zg2d6tF7jqQ8lI3oYFs_JC3fXdPCZhkvlEhHJkc='),(59,'Sofa Chair','Chair',500,'sofa type chair ',99,'https://images.unsplash.com/photo-1598300042247-d088f8ab3a91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c29mYSUyMGNoYWlyfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),(61,'Fabric sofa','Sofa',500,'sofa fabric type',98,'https://m.media-amazon.com/images/I/716j4-UMkKL._SL1100_.jpg'),(62,'Malic sofa','Sofa',600,'Malic sofa',100,'https://m.media-amazon.com/images/I/51fmRXrbhbL._SX425_.jpg'),(63,'wooden sofa','Sofa',400,'wooden type sofa',100,'https://images.woodenstreet.de/image/data%2Fwooden-sofa%2Fmarriott-wooden-sofa%2Frevised%2Frevised-looks%2Fhoney%2Ffront-3s.jpg'),(64,'Dinner table','Dinner table',500,'best simple dinner table',100,'https://m.media-amazon.com/images/I/910Em9myCQL._SL1500_.jpg'),(65,'Glass table','Dinner table',600,'best simple glass dinner table',100,'https://5.imimg.com/data5/SH/BQ/TO/SELLER-11706930/img-20170321-wa0040-500x500.jpg'),(66,'Five seater ','Dinner table',700,'best five seater dinner table',99,'https://5.imimg.com/data5/MC/SW/UB/SELLER-87445875/dinner-table-500x500.jpg');

UNLOCK TABLES;

--
-- Table structure for table `sales_log`
--

DROP TABLE IF EXISTS `sales_log`;

CREATE TABLE `sales_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `product_price` int NOT NULL,
  `quantity` int NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `sales_log`
--

LOCK TABLES `sales_log` WRITE;
INSERT INTO `sales_log` VALUES (26,'snehal','blue chair',380,1,'26/7/2022-08:40:22'),(27,'gaurav','king-Queen',480,1,'26/7/2022-02:40:22');

UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES (1,'deepanshu','admin','123'),(3,'ritesh','admin','12345');
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `product_price` float NOT NULL,
  `quantity` int NOT NULL,
  `total_amt` float NOT NULL,
  `username` varchar(45) NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
INSERT INTO `wishlist` VALUES (10,'white sofa',1,4999,4979,'admin','https://www.ulcdn.net/images/products/309981/original/FNSF52WCNW3_-_main_1.png?1606711207');

UNLOCK TABLES;
create table discount (id varchar(255) not null, coupon varchar(255), status bigint, primary key (id)) engine=InnoDB;
Select * from product where product_name LIKE '%serachword%';
