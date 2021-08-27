-- UserDetail
INSERT INTO [USERDETAIL](fname, lname, phone, address, role) VALUES ('President', 'CEO', '0-112-2021-2564', 'KaoHome', 'Admin');
INSERT INTO [USERDETAIL](fname, lname, phone, address, role) VALUES ('Tutoom', 'Manyriver', '0922253239', 'Home', 'Customer');

-- User 
INSERT INTO [USER](email, password, userDetailId) VALUES ('admin', 'password', 1);
INSERT INTO [USER](email, password, userDetailId) VALUES ('tu@mail.com', 'k904112', 2);

-- Type
INSERT INTO [CATEGORY](cateName, image, description) VALUES ('Noodle', '/images/type/noodle.png', null);
INSERT INTO [CATEGORY](cateName, image, description) VALUES ('Soup', '/images/type/soup.png', null);

-- Menu
INSERT INTO [MENU](menuName, price, description, image, cateId) VALUES ('Beef Noodle Soup', 40.50, 'Wonderfully fragrant and deliciously healthy, this simple Chinese Beef Noodle Soup makes the perfect warming meal.', '/images/menu/noodleSoup.jpg', 1);
INSERT INTO [MENU](menuName, price, description, image, cateId) VALUES ('Spicy Shrimp Soup', 120.00, 'Tom Yum is probably the most famous of Thai soups and is popular not only in Thailand but in Thai restaurants worldwide. It is a clear, sour soup flavored with fragrant lemon grass, fresh galangal root and kaffir lime leaf. This potent herbal mixture is well known for its medicinal properties.', '/images/menu/spicyShrimpSoup.jpg', 2);

