use testdb;
CREATE TABLE `vendor_table` (
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `contact_number` varchar(45) NOT NULL,
  `vendorId` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `vId` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`vId`),
  UNIQUE KEY `contact_number_UNIQUE` (`contact_number`),
  UNIQUE KEY `vendorId_UNIQUE` (`vendorId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;