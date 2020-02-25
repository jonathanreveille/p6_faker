use mydb;
SELECT * FROM mydb.Product;
INSERT INTO Product (name_product, category_idCategory) VALUES ("Pizza Margherita", "1");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Pizza Parma", "1");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Pizza Pollo", "2");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Pizza Pepperonni", "1");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Pizza Pepperonni y Pollo", "1");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Pizza Pollo y Parma", "1");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Coca-Cola", "3");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Sprite", "3");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Fuze Tea", "3");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Tiramisu", "4");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Opéra", "4");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Paris-Brest", "4");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Fôret-noir", "4");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Pizza Tartiflette", "2");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Pizza 3 fromages ", "2");


-- adding prices to products in db
UPDATE `mydb`.`Product` SET `unit_price` = '10.00' WHERE (`idProduct` = '1') and (`Category_idCategory` = '1');
UPDATE `mydb`.`Product` SET `unit_price` = '12.00' WHERE (`idProduct` = '2') and (`Category_idCategory` = '1');
UPDATE `mydb`.`Product` SET `unit_price` = '12.00' WHERE (`idProduct` = '3') and (`Category_idCategory` = '2');
UPDATE `mydb`.`Product` SET `unit_price` = '12.00' WHERE (`idProduct` = '4') and (`Category_idCategory` = '1');
UPDATE `mydb`.`Product` SET `unit_price` = '12.00' WHERE (`idProduct` = '5') and (`Category_idCategory` = '1');
UPDATE `mydb`.`Product` SET `unit_price` = '12.00' WHERE (`idProduct` = '6') and (`Category_idCategory` = '1');
UPDATE `mydb`.`Product` SET `unit_price` = '2.00' WHERE (`idProduct` = '7') and (`Category_idCategory` = '3');
UPDATE `mydb`.`Product` SET `unit_price` = '2.00' WHERE (`idProduct` = '8') and (`Category_idCategory` = '3');
UPDATE `mydb`.`Product` SET `unit_price` = '2.00' WHERE (`idProduct` = '9') and (`Category_idCategory` = '3');
UPDATE `mydb`.`Product` SET `unit_price` = '3.00' WHERE (`idProduct` = '10') and (`Category_idCategory` = '4');
UPDATE `mydb`.`Product` SET `unit_price` = '3.00' WHERE (`idProduct` = '11') and (`Category_idCategory` = '4');
UPDATE `mydb`.`Product` SET `unit_price` = '3.00' WHERE (`idProduct` = '12') and (`Category_idCategory` = '4');
UPDATE `mydb`.`Product` SET `unit_price` = '3.00' WHERE (`idProduct` = '14') and (`Category_idCategory` = '4');
UPDATE `mydb`.`Product` SET `unit_price` = '12.00' WHERE (`idProduct` = '15') and (`Category_idCategory` = '2');
UPDATE `mydb`.`Product` SET `unit_price` = '12.00' WHERE (`idProduct` = '16') and (`Category_idCategory` = '2');
