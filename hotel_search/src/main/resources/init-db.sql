CREATE TABLE `hotel_listing` (
  `hotel_id` int(20) NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `price_per_night` int(20) DEFAULT NULL,
  `rating` double(20) DEFAULT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

INSERT INTO `hotel_listing` (hotel_name, city, price_per_night, rating)
VALUES ('Super8', 'Detroit', 150, 3);
INSERT INTO `Hotel_listing` (hotel_name, city, price_per_night, rating)
VALUES ('WesternInn', 'Detroit', 49, 2);
INSERT INTO `Hotel_listing` (hotel_name, city, price_per_night, rating)
VALUES ('BestInn', 'Dearborn', 39, 5);
INSERT INTO `Hotel_listing` (hotel_name, city, price_per_night, rating)
VALUES ('AmmericanValue', 'Dearborn', 55, 5);
INSERT INTO `Hotel_listing` (hotel_name, city, price_per_night, rating)
VALUES ('BestHotel', 'Ann Arbor', 65, 3);
INSERT INTO `Hotel_listing` (hotel_name, city, price_per_night, rating)
VALUES ('3StarHotel', 'Ann Arbor', 75, 1);

