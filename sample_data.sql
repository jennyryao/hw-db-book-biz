USE `book_business`;

--  Populate Books
INSERT INTO `Books` VALUES(1,'BookA',101,'Fiction',1001,10001,2001);
INSERT INTO `Books` VALUES(2,'BookB',102,'Non-Fiction',1002,10002,2002);
INSERT INTO `Books` VALUES(3,'BookC',103,'Adventure',1003,10003,2003);

--  Populate Authors
INSERT INTO `Authors` VALUES(101,'AuthorA');
INSERT INTO `Authors` VALUES(102,'AuthorB');
INSERT INTO `Authors` VALUES(103,'AuthorC');

--  Populate Royalties
INSERT INTO `Royalties` VALUES(1,101,99);
INSERT INTO `Royalties` VALUES(2,102,199);
INSERT INTO `Royalties` VALUES(3,103,299);

--  Populate Orders
INSERT INTO `Orders` VALUES(100001,1,1000001,'CustomerA','AddressA');
INSERT INTO `Orders` VALUES(100002,2,1000002,'CustomerB','AddressB');
INSERT INTO `Orders` VALUES(100003,3,1000003,'CustomerC','AddressC');

--  Populate Editors
INSERT INTO `Editors` VALUES(1001,'EditorA');
INSERT INTO `Editors` VALUES(1002,'EditorB');
INSERT INTO `Editors` VALUES(1003,'EditorC');

--  Populate Publishers
INSERT INTO `Publishers` VALUES(10001,'PublisherA','US');
INSERT INTO `Publishers` VALUES(10002,'PublisherB','CA');
INSERT INTO `Publishers` VALUES(10003,'PublisherC','CN');


