USE kaofood;
DROP TABLE IF EXISTS [order];
DROP TABLE IF EXISTS [user] ;
DROP TABLE IF EXISTS [menu] ;
DROP TABLE IF EXISTS [category] ;

CREATE TABLE [user] (
    userId    	    INT IDENTITY(1,1)    NOT NULL,
    email    	    VARCHAR(45)         NOT NULL,
    password    	VARCHAR(45)         NOT NULL,
    fname    		VARCHAR(45)         NOT NULL,
    lname    		VARCHAR(45)         NOT NULL,
    phone           VARCHAR(15)         NOT NULL,
    address			VARCHAR(200),
    role			VARCHAR(15)         NOT NULL,
	CONSTRAINT user_pk PRIMARY KEY ( userId ),
    CONSTRAINT user_email_uk UNIQUE ( email ),
    CONSTRAINT user_phone UNIQUE ( phone )
);

CREATE TABLE [category] (
    cateId    		INT IDENTITY(1,1) 	NOT NULL,
    cateName    	VARCHAR(20)         NOT NULL,
    image			VARCHAR(50)         NOT NULL,
    description    	VARCHAR(100),
    CONSTRAINT cate_pk PRIMARY KEY ( cateId )
);

CREATE TABLE [menu] (
    menuId    		INT IDENTITY(1,1) NOT NULL,
    menuName    	VARCHAR(45)	 	  NOT NULL,
    price    		DECIMAL(5,2) 	  NOT NULL,
    description    	VARCHAR(1000) 	  NOT NULL,
    image			VARCHAR(50) 	  NOT NULL,
    cateId			INT 		        NOT NULL,
    CONSTRAINT menu_pk PRIMARY KEY ( menuId ),
    CONSTRAINT cate_fk FOREIGN KEY ( cateId ) REFERENCES category ( cateId )
);

CREATE TABLE [order] (
    orderId    INT IDENTITY(1,1)    NOT NULL,
    totalPrice DECIMAL(6,2)         NOT NULL,
    menuId     INT  	            NOT NULL,
    userId     INT 	        NOT NULL,
    CONSTRAINT order_pk PRIMARY KEY ( orderId ),
    CONSTRAINT user_fk  FOREIGN KEY ( userId ) REFERENCES [user] ( userId ),
    CONSTRAINT menu_fk  FOREIGN KEY ( menuId ) REFERENCES [menu] ( menuId )
);