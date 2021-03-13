use testdb;
CREATE TABLE `product_table` (
  `vId` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `availability` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
   PRIMARY KEY (`vId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
drop table product_table;
select *from product_table;
