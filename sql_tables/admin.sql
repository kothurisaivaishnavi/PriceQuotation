create database testdb;
use testdb;
CREATE TABLE ADMIN(USER_ID VARCHAR(45) NOT NULL, PASSWORD VARCHAR(15) NOT NULL)
engine=InnoDB default charset=utf8 collate=utf8_unicode_ci;
insert into ADMIN values("admin@gmail.com","Abc@1234");