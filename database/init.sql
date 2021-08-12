DROP TABLE orderDetail;
DROP TABLE user;
DROP TABLE userDetail;
DROP TABLE menu;
DROP TABLE type;

CREATE TABLE orderDetail (
    orderId    CHAR(10) NOT NULL AUTO_INCREMENT,
    totalPrice    DECIMAL(6,2) NOT NULL,
    menuId    CHAR(10) NOT NULL,
    userId    CHAR(10) NOT NULL
);
ALTER TABLE orderDetail ADD CONSTRAINT order_pk PRIMARY KEY ( orderId );

CREATE TABLE user (
    userId    CHAR(10) NOT NULL,
    userName    VARCHAR(45) NOT NULL,
    password    VARCHAR(45) NOT NULL,
    userDetailId    CHAR(10) NOT NULL
);
ALTER TABLE user ADD CONSTRAINT user_pk PRIMARY KEY ( userId );

CREATE TABLE userDetail (
    userDetailId    CHAR(10) NOT NULL,
    fname    VARCHAR(45) NOT NULL,
    lname    VARCHAR(45) NOT NULL,
    dob	Date NOT NULL,
    address	VARCHAR(200),
    role	VARCHAR(15) NOT NULL
);
ALTER TABLE userDetail ADD CONSTRAINT user_detail_pk PRIMARY KEY ( userDetailId );

CREATE TABLE menu (
    menuId    CHAR(10) NOT NULL AUTO_INCREMENT,
    menuName    VARCHAR(45) NOT NULL,
    price    DECIMAL(5,2) NOT NULL,
    description    VARCHAR(200) NOT NULL,
    image	VARCHAR(50) NOT NULL,
    typeId	CHAR(10) NOT NULL
);
ALTER TABLE menu ADD CONSTRAINT menu_pk PRIMARY KEY ( menuId );

CREATE TABLE type (
    typeId    CHAR(10) NOT NULL,
    typeName    VARCHAR(20) NOT NULL,
    description    VARCHAR(100) NOT NULL
);
ALTER TABLE type ADD CONSTRAINT type_pk PRIMARY KEY ( typeId );


ALTER TABLE user
    ADD CONSTRAINT user_detail_fk FOREIGN KEY ( userDetailId )
        REFERENCES userDetail ( userDetailId );
ALTER TABLE orderDetail
    ADD CONSTRAINT user_fk FOREIGN KEY ( userId )
        REFERENCES user ( userId );
ALTER TABLE orderDetail
    ADD CONSTRAINT menu_fk FOREIGN KEY ( menuId )
        REFERENCES menu ( menuId );
ALTER TABLE menu
    ADD CONSTRAINT type_fk FOREIGN KEY ( typeId )
        REFERENCES type ( typeId );