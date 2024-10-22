USE int222_kaofood;
-- Role
INSERT INTO `role`(name) VALUES ('Admin');
INSERT INTO `role`(name) VALUES ('Staff');
INSERT INTO `role`(name) VALUES ('Member');

-- User 
INSERT INTO `user`(email, password, fname, lname, phone, address, roleId) VALUES ('admin', '$2a$12$3RXfDYKBwSmGNuGZ.eTqn.wRYyjzgQcEqsdQKdOVRIL5bzThqYQ0K', 'President', 'Admin', '0-112-2021-2564', 'KaoHome', '1');
INSERT INTO `user`(email, password, fname, lname, phone, address, roleId) VALUES ('staff', '$2a$12$QNxUkhs4C/xjgytTQLpvBuiY5kcRIXvXqwhBJglVxFOjVN5xg2rDO', 'Staff', 'Staff', '0901234567', 'KaoFood', '2');
INSERT INTO `user`(email, password, fname, lname, phone, address, roleId) VALUES ('customer', '$2a$12$VBdNqJtnff4pTAgJ3QOJlO/kN16/BKPNjTSRIBs342qGmOY0fLmKe', 'Customer', 'Customer', '00231456', 'This is Member Address', '2');
INSERT INTO `user`(email, password, fname, lname, phone, address, roleId) VALUES ('baltazar.ka@mail.com', 'baltazar', 'Baltazar', 'Kariuki', '0971234567', 'KaoFood', '2');
INSERT INTO `user`(email, password, fname, lname, phone, address, roleId) VALUES ('tatenda.cha@mail.com', 'tatenda', 'Tatenda', 'Chaudhary', '0911234567', 'India', '2');
INSERT INTO `user`(email, password, fname, lname, phone, address, roleId) VALUES ('arisztid.caro@mail.com', 'arisztid', 'Arisztid', 'Caro', '0921234567', 'Greek', '3');
INSERT INTO `user`(email, password, fname, lname, phone, address, roleId) VALUES ('ananta.bo@mail.com', 'ananta', 'Ananta', 'Bonomo', '0941234567', 'Thailand', '3');
INSERT INTO `user`(email, password, fname, lname, phone, address, roleId) VALUES ('lada.schu@mail.com', 'ladaschu', 'Lada', 'Schumacher', '0951234567', 'Thailand', '3');
INSERT INTO `user`(email, password, fname, lname, phone, address, roleId) VALUES ('ayoub.ai@mail.com', 'ayoub', 'Ayoub', 'Aiolfi', '0931234567', 'America', '3');

-- Type
INSERT INTO `category`(name, image, description) VALUES ('Noodle', 'https://image.flaticon.com/icons/png/512/4389/4389151.png', null);
INSERT INTO `category`(name, image, description) VALUES ('Soup', 'https://image.flaticon.com/icons/png/512/590/590812.png', null);
INSERT INTO `category`(name, image, description) VALUES ('Salad', 'https://image.flaticon.com/icons/png/512/1057/1057357.png', null);
INSERT INTO `category`(name, image, description) VALUES ('Fried', 'https://image.flaticon.com/icons/png/512/3449/3449449.png', null);
INSERT INTO `category`(name, image, description) VALUES ('Dessert', 'https://image.flaticon.com/icons/png/512/4465/4465584.png', null);

-- Menu
-- INSERT INTO [MENU](menuName, price, description, image, cateId) VALUES ('name', 10, 'des', '/images/menu/', 0);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Beef Noodle Soup', 40.50, 'Wonderfully fragrant and deliciously healthy, this simple Chinese Beef Noodle Soup makes the perfect warming meal.', '/menu/image/Beef Noodle Soup.jpg', 1);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Spicy Shrimp Soup', 120.00, 'Tom Yum is probably the most famous of Thai soups and is popular not only in Thailand but in Thai restaurants worldwide. It is a clear, sour soup flavored with fragrant lemon grass, fresh galangal root and kaffir lime leaf. This potent herbal mixture is well known for its medicinal properties.', '/menu/image/Spicy Shrimp Soup.jpg', 2);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Tom Kha Gai', 100.00, 'Tom Kha Gai is cherished as a full-flavoured soup like Tom 0.Yum but made milder with coconut milk. Tom Kha is predominantly sour but also sweet, salty and deliciously coconutty. A good Tom Kha recipe calls for a smoothtextured soup. The coconut milk must not separate. Popular choices of protein are lean meats such as chicken breast and white fish.', '/menu/image/Tom Kha Gai.jpg', 2);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Som Tam', 90.50, 'Som tam hails from Isaan in Northeastern Thailand and is one of the most popular dishes in Thailand. Som tam comes in a variety of styles, however, the classic som tam consists of shredded green papaya, tomatoes, carrots, peanuts, dried shrimp, runner beans, palm sugar, tamarind pulp, fish sauce, lime juice, garlic and plenty of chillies. The ingredients are mixed together using a mortar and pestle, which amplifies the flavours into a super moreish dish.', '/menu/image/Som Tam.jpg', 3);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Yam Pla Dook Foo', 80.00, '‘Fluffy’ and ‘crispy’ might be the best words to describe this dish. Catfish is fried in teeny tiny pieces (read “blown up”) creating an airy, fluffy and scrumptious fish salad. The secret to this dish is the pairing of the crispy fish with sweet, sour and spicy green mango salad. This dish is best enjoyed as an appetizer with a group of friends or as a beer snack.', '/menu/image/Yam Pla Dook Foo.jpg', 3);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Yam Talay', 180.00, 'This mixed seafood salad is not only delicious but is also a healthy meal option. Depending on where you are, this salad can have any combination of squid, shrimp, mussels, scallops or crabmeat in it. Added to the seafood medley are tomatoes, onions and rice glass noodles for good measure.', '/menu/image/Yam Talay.jpg', 3);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Laab', 70.50, 'Laab is a northeastern-style salad with meat or mushroom and mint which originates in the northeastern province of Isan. Laab comes in a variety of styles including chicken, pork, and mushroom. It is not recommended for those who can’t handle spice as it tends to come with a hefty kick.', '/menu/image/Laab.jpg', 3);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Stir-Fried Pumpkin', 60.00, 'Stir-fried pumpkin or “pad phuk tong” is one of the best vegetarian-friendly dishes in the Land of Smiles. While it is more difficult to find than a good helping of pad thai, you should definitely be on the lookout for this dish. Order it with a plate of brown rice if available and you’ll be laughing.', '/menu/image/Stir-Fried Pumpkin.jpg', 4);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Pad Thai', 50.00, 'Pad thai is one of Thailands national dishes and is a go-to for tourists who are starting out their Thai cuisine exploration. Pad thai is a fried noodle dish which is usually made with shrimp or chicken, however, the vegetarian option is popular too. Pad thai is available on almost every street corner and is a cheap and tasty meal.', '/menu/image/Pad Thai.jpg', 4);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Pad See Eiw', 75.00, 'This dish consists of wide rice noodles which are stir-fried in thick dark soy sauce with chicken, pork, or beef as well as either Chinese broccoli or cabbage. A flavorful but safe choice, it’s an excellent option for those who can’t handle spicier Thai dishes but want to branch out from pad thai. Foodies who like a little more kick can add dried chilli flakes, vinegar, or both.', '/menu/image/Pad See Eiw.jpg', 4);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Pak Boong', 40.00, 'Pak boong (morning glory) is known for being extremely healthy. This spinach-like vegetable is typically fried and seasoned with soybean paste, soy sauce, garlic, chillies and more. Morning glory is salty, spicy, sour and crunchy all at the same time, satisfying anyone’s palette. This dish is often made with oyster sauce, however, the vegetarian option can easily be prepared.', '/menu/image/Pak Boong.jpg', 4);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Fried Rice', 45.00, 'Khao pad is maybe comparable to England’s love of sandwiches – consumed on mass khao pad is a Thai go-to. Khao pad simply translates to “fried rice” and is just that with some egg, onion and that’s about it. The dish usually comes with slices of cucumber to garnish and plenty of condiments are usually dumped on top to suit the consumer’s taste.', '/menu/image/Fried Rice.jpg', 4);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Pad Krapow', 45.00, 'A real Thai classic Pad Krapao ( which means basil stir-fry) topped with, or served over, a crispy fried egg with a slightly runny yolk.', '/menu/image/Pad Krapow.jpg', 4);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Panang', 90.50, 'Panang curry is a bit milder than its other curry counterparts in Thailand. It is for this reason that it remains a popular dish amongst tourists who are remaining in the spicy “safe zone.” Panang curry typically is served with shrimp, although vegetarian options are popular too.', '/menu/image/Panang.jpg', 2);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Green Curry', 90.50, 'Green curry paste is traditionally made by pounding in a mortar green chillies, shallots, garlic, galangal, lemongrass, kaffir lime leaves, cilantro roots (coriander), and cumin seeds, white peppercorns, shrimp paste and salt.', '/menu/image/Green Curry.jpg', 2);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Khao Soi', 50.00, 'Khao Soi is a deliciously creamy and slightly spicy yellow curry dish unique to Northern Thailand. It will satisfy your craving for a Thai curry dish while still being delightfully out of the ordinary. We stumbled upon it within our first week of moving to Chiang Mai.', '/menu/image/Khao Soi.jpg', 1);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Fried Chicken', 30.25, 'Fried chicken may not be a uniquely Thai dish, but it’s extremely popular in Thailand. Gai tod is typically prepared by marinating chicken wings or drumsticks in a blend of spices and rice flour before deep frying the whole mixture. To add a little extra flavour, the chicken is also often served with a spicy dipping sauce like “nam jim.” Gai tod is best eaten with sticky rice and makes for a perfect on-the-go snack.', '/menu/image/Fried Chicken.jpg', 4);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Fried Vegetables', 25.75, 'This Thai classic will leave vegetarians and carnivores alike full and content. Most Thai dishes attempt to combine as many flavours as possible to make the most noteworthy dishes, and stir-fried vegetables are no exception. It’s worth not underestimating the flavour of these fried vegetables as they are mixed with a perfectly harmonious blend of sugar, salt and spices.', '/menu/image/Fried Vegetables.jpg', 4);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Kai Med Ma Muang', 100.00, 'Kai med ma muang is loved by locals and foreigners alike. This sweet and flavourful dish is stir-fried chicken with cashew nuts, soy sauce, honey, onions, chillies, pepper, mushrooms, basically whatever vegetables the chef has on hand. Simple, yet very tasty.', '/menu/image/Kai Med Ma Muang.jpg', 4);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Thai Omelette', 25.00, 'his type of Thai-style omelet features multiple soft inner layers and crispy edges. It''s made of very few simple ingredients and, though some attention is needed when it comes to technique, the overall process is very quick and easy. Lots of smoking hot oil is necessary in ensuring success.', '/menu/image/Thai Omelette.jpg', 4);
INSERT INTO `menu`(name, price, description, image, cateId) VALUES ('Mango and Sticky Rice', 80.00, 'Looking for dessert? Look no further than the all-time crowd pleaser of mango and sticky rice. Kao niew ma muang is simple but extremely delicious, made with sticky rice, fresh mango slices, and lashings of sweet condensed milk.', '/menu/image/Mango and Sticky Rice.jpg', 5);

-- Status
INSERT INTO `status`(name) VALUES ('Ordered');
INSERT INTO `status`(name) VALUES ('Cooking');
INSERT INTO `status`(name) VALUES ('Delivering');
INSERT INTO `status`(name) VALUES ('Arrived');

-- Order
INSERT INTO `orders`(totalPrice, userId, statusId) VALUES (580.50, 4, 1);
INSERT INTO `orders`(totalPrice, userId, statusId) VALUES (790.50, 5, 1);


-- OrderDetail
INSERT INTO `orderDetail`(ordersId, menuId, count) VALUES (1, 1, 1);
INSERT INTO `orderDetail`(ordersId, menuId, count) VALUES (1, 2, 2);
INSERT INTO `orderDetail`(ordersId, menuId, count) VALUES (1, 3, 3);
INSERT INTO `orderDetail`(ordersId, menuId, count) VALUES (2, 4, 1);
INSERT INTO `orderDetail`(ordersId, menuId, count) VALUES (2, 5, 2);
INSERT INTO `orderDetail`(ordersId, menuId, count) VALUES (2, 6, 3);
