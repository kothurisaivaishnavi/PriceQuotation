create table `request_form`(
	`requestId` int NOT NULL auto_increment,
	`priceQuotation` varchar(100) NOT NULL,
    `productId` int NOT NULL,
    primary key(`requestId`),   
    foreign key(`productId`) references product_table(`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
drop table request_form;
select *from request_form;