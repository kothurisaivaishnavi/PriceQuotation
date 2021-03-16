create table `order_table`(
	`orderId` int NOT NULL auto_increment,
	`productName` varchar(45) NOT NULL,
    `Qty` int NOT NULL,
    `price` int NOT NULL,
    `amount` int NOT NULL,
    `id` int,
    primary key(`orderId`),
    foreign key(`id`) references user_table(`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;