GRANT ALL ON *.* to 'int222'@'%' WITH GRANT OPTION;
SET GLOBAL max_connections = 512;
DROP SCHEMA IF EXISTS `kaofood` ;
CREATE SCHEMA IF NOT EXISTS `kaofood` DEFAULT CHARACTER SET utf8 ;
USE kaofood;
DROP TABLE IF EXISTS `orderDetail`;
DROP TABLE IF EXISTS `orders`;
DROP TABLE IF EXISTS `status`;
DROP TABLE IF EXISTS `user` ;
DROP TABLE IF EXISTS `menu` ;
DROP TABLE IF EXISTS `category` ;

CREATE TABLE `user` (
    id    	    	INT                 NOT NULL AUTO_INCREMENT,
    email    	    VARCHAR(45)         NOT NULL,
    password    	VARCHAR(45)         NOT NULL,
    fname    		VARCHAR(45)         NOT NULL,
    lname    		VARCHAR(45)         NOT NULL,
    phone           VARCHAR(15)         NOT NULL,
    address			VARCHAR(200)        NOT NULL,
    role			VARCHAR(15)         NOT NULL,
	CONSTRAINT user_pk PRIMARY KEY ( id ),
    CONSTRAINT user_email_uk UNIQUE ( email ),
    CONSTRAINT user_phone_uk UNIQUE ( phone )
);

CREATE TABLE `category` (
    id    			INT 				NOT NULL AUTO_INCREMENT,
    name    		VARCHAR(20)         NOT NULL,
    image			VARCHAR(500)         NOT NULL,
    description    	VARCHAR(100),
    CONSTRAINT cate_pk PRIMARY KEY ( id )
);

CREATE TABLE `menu` (
    id    			INT				  NOT NULL AUTO_INCREMENT,
    name    		VARCHAR(45)	 	  NOT NULL,
    price    		DECIMAL(5,2) 	  NOT NULL,
    description    	VARCHAR(1000) 	  NOT NULL,
    image			VARCHAR(50) 	  NOT NULL,
    cateId			INT 		        NOT NULL,
    CONSTRAINT menu_pk PRIMARY KEY ( id ),
    CONSTRAINT cate_fk FOREIGN KEY ( cateId ) REFERENCES category ( id )
);

CREATE TABLE `status` (
    id   	INT					NOT NULL AUTO_INCREMENT,
    name 	VARCHAR(30)       	NOT NULL,
    CONSTRAINT status_pk PRIMARY KEY ( id ),
    CONSTRAINT status_name UNIQUE ( name )
);

CREATE TABLE `orders` (
    id    				INT					NOT NULL AUTO_INCREMENT,
    totalPrice 			DECIMAL(6,2)        NOT NULL,
    userId				INT					NOT NULL,
    statusId			INT					NOT NULL,
    CONSTRAINT orders_pk PRIMARY KEY ( id ),
    CONSTRAINT user_fk  FOREIGN KEY ( userId ) REFERENCES `user` ( id ),
    CONSTRAINT status_fk  FOREIGN KEY ( statusId ) REFERENCES `status` ( id )
);

CREATE TABLE `orderDetail` (
	id				INT			NOT NULL AUTO_INCREMENT,
    ordersId    	INT			NOT NULL,
    menuId	   		INT         NOT NULL,
    count			INT			NOT NULL,
    CONSTRAINT order_detail_pk PRIMARY KEY ( id ),
    CONSTRAINT orders_fk FOREIGN KEY ( ordersId ) REFERENCES `orders` ( id ),
    CONSTRAINT menu_fk  FOREIGN KEY ( menuId ) REFERENCES `menu` ( id )
);
