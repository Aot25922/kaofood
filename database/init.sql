GRANT ALL ON *.* to 'int222'@'%' WITH GRANT OPTION;
DROP SCHEMA IF EXISTS `kaofood` ;
CREATE SCHEMA IF NOT EXISTS `kaofood` DEFAULT CHARACTER SET utf8 ;
USE kaofood;
DROP TABLE IF EXISTS `orderDetail`;
DROP TABLE IF EXISTS `order`;
DROP TABLE IF EXISTS `status`;
DROP TABLE IF EXISTS `user` ;
DROP TABLE IF EXISTS `menu` ;
DROP TABLE IF EXISTS `category` ;

CREATE TABLE `user` (
    userId    	    INT                 NOT NULL AUTO_INCREMENT,
    email    	    VARCHAR(45)         NOT NULL,
    password    	VARCHAR(45)         NOT NULL,
    fname    		VARCHAR(45)         NOT NULL,
    lname    		VARCHAR(45)         NOT NULL,
    phone           VARCHAR(15)         NOT NULL,
    address			VARCHAR(200),
    role			VARCHAR(15)         NOT NULL,
	CONSTRAINT user_pk PRIMARY KEY ( userId ),
    CONSTRAINT user_email_uk UNIQUE ( email ),
    CONSTRAINT user_phone_uk UNIQUE ( phone )
);

CREATE TABLE `category` (
    cateId    		INT 				NOT NULL AUTO_INCREMENT,
    cateName    	VARCHAR(20)         NOT NULL,
    image			VARCHAR(50)         NOT NULL,
    description    	VARCHAR(100),
    CONSTRAINT cate_pk PRIMARY KEY ( cateId )
);

CREATE TABLE `menu` (
    menuId    		INT				  NOT NULL AUTO_INCREMENT,
    menuName    	VARCHAR(45)	 	  NOT NULL,
    price    		DECIMAL(5,2) 	  NOT NULL,
    description    	VARCHAR(1000) 	  NOT NULL,
    image			VARCHAR(50) 	  NOT NULL,
    cateId			INT 		        NOT NULL,
    CONSTRAINT menu_pk PRIMARY KEY ( menuId ),
    CONSTRAINT cate_fk FOREIGN KEY ( cateId ) REFERENCES category ( cateId )
);

CREATE TABLE `status` (
    statusId   INT					NOT NULL AUTO_INCREMENT,
    statusName VARCHAR(30)          NOT NULL,
    CONSTRAINT status_pk PRIMARY KEY ( statusId ),
    CONSTRAINT status_name UNIQUE ( statusName )
);

CREATE TABLE `order` (
    orderId    			INT					NOT NULL AUTO_INCREMENT,
    totalPrice 			DECIMAL(6,2)        NOT NULL,
    statusId			INT					NOT NULL,
    CONSTRAINT order_pk PRIMARY KEY ( orderId ),
    CONSTRAINT status_fk  FOREIGN KEY ( statusId ) REFERENCES `status` ( statusId )
);

CREATE TABLE `orderDetail` (
    orderId    		INT			NOT NULL,
    menuId	   		INT         NOT NULL,
    serving			int			NOT NULL,
    CONSTRAINT order_detail_pk PRIMARY KEY ( orderId,menuId ),
    CONSTRAINT order_fk FOREIGN KEY ( orderId ) REFERENCES `order` ( orderId ),
    CONSTRAINT menu_fk  FOREIGN KEY ( menuId ) REFERENCES `menu` ( menuId )
);
