GRANT ALL ON *.* to 'int222'@'%' WITH GRANT OPTION;

DROP SCHEMA IF EXISTS `9food` ;
CREATE SCHEMA IF NOT EXISTS `9food` DEFAULT CHARACTER SET utf8 ;
USE `9food` ;

DROP TABLE IF EXISTS `9food`.`orderDetail` ;
DROP TABLE IF EXISTS `9food`.`user` ;
DROP TABLE IF EXISTS `9food`.`userDetail` ;
DROP TABLE IF EXISTS `9food`.`menu` ;
DROP TABLE IF EXISTS `9food`.`type` ;

CREATE TABLE userDetail (
    userDetailId    CHAR(10) 	NOT NULL,
    fname    		VARCHAR(45) NOT NULL,
    lname    		VARCHAR(45) NOT NULL,
    dob				Date 		NOT NULL,
    address			VARCHAR(200),
    role			VARCHAR(15) NOT NULL,
    CONSTRAINT user_detail_pk PRIMARY KEY ( userDetailId )
);

CREATE TABLE user (
    userId    		VARCHAR(10) NOT NULL,
    userName    	VARCHAR(45) NOT NULL,
    password    	VARCHAR(45) NOT NULL,
    userDetailId    CHAR(10) 	NOT NULL,
	CONSTRAINT user_pk PRIMARY KEY ( userId ),
    CONSTRAINT user_detail_fk FOREIGN KEY ( userDetailId ) REFERENCES userDetail ( userDetailId )
);

CREATE TABLE type (
    typeId    		CHAR(10) 	NOT NULL,
    typeName    	VARCHAR(20) NOT NULL,
    image			VARCHAR(50) NOT NULL,
    description    	VARCHAR(100),
    CONSTRAINT type_pk PRIMARY KEY ( typeId )
);

CREATE TABLE menu (
    menuId    		INT(10) 		NOT NULL AUTO_INCREMENT,
    menuName    	VARCHAR(45)	 	NOT NULL,
    price    		DECIMAL(5,2) 	NOT NULL,
    description    	VARCHAR(200) 	NOT NULL,
    image			VARCHAR(50) 	NOT NULL,
    typeId			CHAR(10) 		NOT NULL,
    CONSTRAINT menu_pk PRIMARY KEY ( menuId ),
    CONSTRAINT type_fk FOREIGN KEY ( typeId ) REFERENCES type ( typeId )
);

CREATE TABLE orderDetail (
    orderId    INT(10) 	NOT NULL AUTO_INCREMENT,
    totalPrice DECIMAL(6,2) NOT NULL,
    menuId     INT(10) 	NOT NULL,
    userId     VARCHAR(10) 	NOT NULL,
    CONSTRAINT order_pk PRIMARY KEY ( orderId ),
    CONSTRAINT user_fk FOREIGN KEY ( userId ) REFERENCES user ( userId ),
    CONSTRAINT menu_fk FOREIGN KEY ( menuId ) REFERENCES menu ( menuId )
);