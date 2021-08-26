-- UserDetail
INSERT INTO USERDETAIL(userDetailId, fname, lname, email, phone, address, role) VALUES ('1001', 'President', 'CEO', 'kaofood@mail.com', '0-112-2021-2564');

-- User 
INSERT INTO USER(userId, userName, password, userDetailId) VALUES ('10001', 'admin', 'password', '1001');

-- Menu
INSERT INTO MENU(munuId, menuName, price, description, image, typeId) VALUES ('1', 'Beef Noodle Soup', '40.50', 'Wonderfully fragrant and deliciously healthy, this simple Chinese Beef Noodle Soup makes the perfect warming meal.', '/images/menu/noodleSoup.jpg', '1');
INSERT INTO MENU(munuId, menuName, price, description, image, typeId) VALUES ('2', 'Spicy Shrimp Soup', '120.00', 'Tom Yum is probably the most famous of Thai soups and is popular not only in Thailand but in Thai restaurants worldwide. It is a clear, sour soup flavored with fragrant lemon grass, fresh galangal root and kaffir lime leaf. This potent herbal mixture is well known for its medicinal properties.', '/images/menu/spicyShrimjpSoup.jpg', '2');

-- Type
INSERT INTO TYPE(typeId, typeName, image, description) VALUES ('1', 'Noodle', '/images/type/noode.png');
INSERT INTO TYPE(typeId, typeName, image, description) VALUES ('1', 'Soup', '/images/type/Soup.png');