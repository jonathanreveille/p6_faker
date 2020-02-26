-- insert adress from clients
use mydb;
INSERT INTO adress (building_number, street_name, zipcode, floor, digicode, interphone)
VALUES ('5', 'Rue Henri Martin', '92100', '2','B8522', '6');
INSERT INTO adress (building_number, street_name, zipcode, floor, digicode, interphone)
VALUES ('8', 'Rue Haussmann', '75010', '1','A8532', '18');
INSERT INTO adress (building_number, street_name, zipcode, floor, digicode, interphone)
VALUES ('59', 'Boulevard Argenteuil', '75003', 'RDC','1979', 'B93');
INSERT INTO adress (building_number, street_name, zipcode, floor, digicode, interphone)
VALUES ('88', 'Avenue Georges Pompidou', '75006', '2','B8522', '6');
INSERT INTO adress (building_number, street_name, zipcode, floor, digicode, interphone)
VALUES ('89', 'Rue Issy Les Moulineaux', '92100', '10','A8599', '4');
INSERT INTO adress (building_number, street_name, zipcode, floor, digicode, interphone)
VALUES ('19', 'Rue Paradis', '75009', '3','B1919', 'A');
INSERT INTO adress (building_number, street_name, zipcode, floor, digicode, interphone)
VALUES ('89', 'Rue de la Fidélité', '75009', '10','A8599', '4');
INSERT INTO adress (building_number, street_name, zipcode, floor, digicode, interphone)
VALUES ('5bis', 'Rue de la Gare', '75007', '22','A1029', '1010');

-- insert restaurant adresses
use mydb;
SELECT * FROM mydb.Adress;
INSERT INTO Adress (building_number, street_name, zipcode)
VALUES ("5", "Rue de Silly", "92100");
INSERT INTO Adress (building_number, street_name, zipcode)
VALUES ("78", "Rue du Berger", "75015");
INSERT INTO Adress (building_number, street_name, zipcode)
VALUES ("44", "Avenue de Chatelet", "75001");
INSERT INTO Adress (building_number, street_name, zipcode)
VALUES ("101", "Boulevard de Rivoli", "75002");
INSERT INTO Adress(building_number, street_name, zipcode)
VALUES ("98", "Rue Montmartre", "75006");

-- insert in db categories
use mydb;
SELECT * FROM mydb.Category;
INSERT INTO category (name_category) VALUES ("pizza base tomate");
INSERT INTO category (name_category) VALUES ("pizza base crème");
INSERT INTO category (name_category) VALUES ("boisson");
INSERT INTO category (name_category) VALUES ("dessert");

-- insert in db ingredients 
use mydb;
SELECT * FROM mydb.Ingredient;
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("sauce tomate", "5400");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("crèche fraiche", "5400");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("mozarella", "5880");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("pâte à pizza", "1200");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Poulet émincé", "3000");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Salami Piquante", "3000");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Parma Ham", "3000");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Lardon", "3000");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Pomme de terre", "3000");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Coca-cola", "1200");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Sprite", "1200");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Fuze Tea", "1200");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Tiramisu", "1200");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Opéra", "1200");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Paris-Brest", "1200");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Fôret-noir", "1200");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Reblochon", "1500");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Fromage bleu", "1500");

-- insert in db products 
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

-- adding ingredients by product
use mydb;
SELECT * FROM mydb.Product_has_Ingredient;
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("1", "1");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("1", "3");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("1", "4");

INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("2", "1");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("2", "3");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("2", "4");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("2", "7");

INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("3", "2");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("3", "3");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("3", "4");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("3", "5");

INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("4", "1");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("4", "3");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("4", "4");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("4", "6");

INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("5", "1");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("5", "3");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("5", "4");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("5", "6");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("5", "5");

INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("6", "1");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("6", "3");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("6", "4");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("6", "5");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("6", "7");


INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("7", "10");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("8", "11");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("9", "12");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("10", "13");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("11", "14");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("12", "15");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("14", "16");

INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("15", "2");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("15", "3");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("15", "4");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("15", "8");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("15", "9");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("15", "17");

INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("16", "2");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("16", "3");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("16", "4");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("16", "17");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("16", "18");


-- inserting restaurants
use mydb;
SELECT * FROM mydb.Restaurant;
INSERT INTO restaurant (restaurant_name, Adress_idAdress)
VALUES ("OC_PIZZA_1", 9);
INSERT INTO restaurant (restaurant_name, Adress_idAdress)
VALUES ("OC_PIZZA_2", 10);
INSERT INTO restaurant (restaurant_name, Adress_idAdress)
VALUES ("OC_PIZZA_3", 11);
INSERT INTO restaurant (restaurant_name, Adress_idAdress)
VALUES ("OC_PIZZA_4", 12);
INSERT INTO restaurant (restaurant_name, Adress_idAdress)
VALUES ("OC_PIZZA_5", 13);

-- insert stock of ingredients per restaurant
use mydb;

SELECT * FROM mydb.Restaurant_has_Ingredient;

INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (1, 9, 1, 900);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (1, 9, 2, 900);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (1, 9, 3, 980);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (1, 9, 4, 1000);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (1, 9, 5, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (1, 9, 6, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (1, 9, 7, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (1, 9, 8, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (1, 9, 9, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (1, 9, 10, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (1, 9, 11, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (1, 9, 12, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (1, 9, 13, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (1, 9, 14, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (1, 9, 15, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (1, 9, 16, 200);


INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (2, 10, 1, 900);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (2, 10, 2, 900);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (2, 10, 3, 980);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (2, 10, 4, 1000);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (2, 10, 5, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (2, 10, 6, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (2, 10, 7, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (2, 10, 8, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (2, 10, 9, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (2, 10, 10, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (2, 10, 11, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (2, 10, 12, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (2, 10, 13, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (2, 10, 14, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (2, 10, 15, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (2, 10, 16, 200);

INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (3, 11, 1, 900);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (3, 11, 2, 900);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (3, 11, 3, 980);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (3, 11, 4, 1000);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (3, 11, 5, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (3, 11, 6, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (3, 11, 7, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (3, 11, 8, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (3, 11, 9, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (3, 11, 10, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (3, 11, 11, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (3, 11, 12, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (3, 11, 13, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (3, 11, 14, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (3, 11, 15, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (3, 11, 16, 200);

INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (4, 12, 1, 900);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (4, 12, 2, 900);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (4, 12, 3, 980);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (4, 12, 4, 1000);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (4, 12, 5, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (4, 12, 6, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (4, 12, 7, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (4, 12, 8, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (4, 12, 9, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (4, 12, 10, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (4, 12, 11, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (4, 12, 12, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (4, 12, 13, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (4, 12, 14, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (4, 12, 15, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (4, 12, 16, 200);

INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (5, 13, 1, 900);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (5, 13, 2, 900);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (5, 13, 3, 980);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (5, 13, 4, 1000);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (5, 13, 5, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (5, 13, 6, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (5, 13, 7, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (5, 13, 8, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (5, 13, 9, 500);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (5, 13, 10, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (5, 13, 11, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (5, 13, 12, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (5, 13, 13, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (5, 13, 14, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (5, 13, 15, 200);
INSERT INTO Restaurant_has_Ingredient (Restaurant_idRestaurant, Restaurant_Adress_idAdress, Ingredient_idIngredient, quantity)
VALUES (5, 13, 16, 200);

-- insert roles for users
use mydb;
SELECT * FROM mydb.Role;
INSERT INTO role (role_name) VALUES ("Client");
INSERT INTO role (role_name) VALUES ("Admin");
INSERT INTO role (role_name) VALUES ("Delivery");
INSERT INTO role (role_name) VALUES ("Cashier");

-- insert status for orders
use mydb;
SELECT * FROM mydb.Status;
INSERT INTO status (status_name) VALUES("order_is_received_by_restaurant");
INSERT INTO status (status_name) VALUES("order_in_preparation");
INSERT INTO status (status_name) VALUES("order_ready_to_go");
INSERT INTO status (status_name) VALUES("order_in_delivery");
INSERT INTO status (status_name) VALUES("order_is_delivered");

-- insert users (clients, employees, deliverers)
use mydb;
SELECT * FROM mydb.User;
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Véronique','Renaud','rene67@voila.fr','06 15 47 82 83','*TJClGFZI5', 1, '1');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Richard','Bourgeois','emmanuelleschmitt@ifrance.com','+33 (0)1 00 67 55 27','n$7%$55sGN', 1, '2');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Aimé','Begue','sloiseau@free.fr','0379373002','Mj66LbmD@j', 1, '3');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Clémence','Etienne','rroux@orange.fr','02 58 94 91 74','NtYc9Oh@f^', 1, '4');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Richard','Tanguy','uchevalier@launay.fr','+33 3 74 65 63 70','VP)5CIc#vS', 1, '5');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Nath','Chauvin','pgros@live.com','+33 5 86 57 94 27','_OC5BDYzc6', 1, '6');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Monique','Humbert','mariebernier@baudry.fr','08 07 13 65 50','(U4NupCln_', 1, '7');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Maude','Jackie','quenneni@laposte.fr','01 49 68 49 82','aaL8HdjJ%', 1, '8');

INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Employee1','Cashier1','oc_pizza1@oc.fr','01 24 24 24 24','ahQsdkj', 4, '9');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Employee2','Cashier2','oc_pizza2@oc.fr','01 24 24 24 25','lkqjdqD', 4, '10');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Employee3','Cashier3','oc_pizza3@oc.fr','01 24 24 24 26','kqjnd)(', 4, '11');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Employee4','Cashier4','oc_pizza4@oc.fr','01 24 24 24 27','ksdmlk', 4, '12');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Employee5','Cashier5','oc_pizza5@oc.fr','01 24 24 24 28','WhAtOC', 4, '13');

INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Admin1','SuperAdmin','admin_pizza5@oc.fr','01 48 49 48 49','seCreT', 2, '9');

INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Develivery1','Guy','delivery1@oc.fr','01 24 24 24 24','qdqsd', 3, '9');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Develivery2','Girl','delivery2@oc.fr','01 24 24 24 25','qdazed', 3, '10');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Develivery3','Guy','delivery2@oc.fr','01 24 24 24 25','kusqsd', 3, '10');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Develivery4','Guy','delivery3@oc.fr','01 24 24 24 26','pineaA', 3, '11');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Develivery5','Girl','delivery4@oc.fr','01 24 24 24 27','qdqsd', 3, '12');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) 
VALUES ('Develivery6','Girl','delivery5@oc.fr','01 24 24 24 28','qdqsd', 3, '13');

-- insert orders
SELECT * FROM mydb.Order;
use mydb;

INSERT INTO `mydb`.`Order` (`User_userId`, `User_Role_roleId`, `User_Adress_idAdress`, `Status_IdStatus`, `time_created`, `restaurant_id`) 
VALUES ('2', '1', '2', '1', '2020-02-18 17:01:39', '1');
INSERT INTO `mydb`.`Order` (`User_userId`, `User_Role_roleId`, `User_Adress_idAdress`, `Status_IdStatus`, `time_created`, `restaurant_id`) 
VALUES ('8', '1', '8', '1', '2020-02-18 17:02:39', '1');
INSERT INTO `mydb`.`Order` (`User_userId`, `User_Role_roleId`, `User_Adress_idAdress`, `Status_IdStatus`, `time_created`, `restaurant_id`) 
VALUES ('1', '1', '1', '1', '2020-02-18 17:05:50', '2');
INSERT INTO `mydb`.`Order` (`User_userId`, `User_Role_roleId`, `User_Adress_idAdress`, `Status_IdStatus`, `time_created`, `restaurant_id`) 
VALUES ('3', '1', '3', '1', '2020-02-18 17:14:20', '3');
INSERT INTO `mydb`.`Order` (`User_userId`, `User_Role_roleId`, `User_Adress_idAdress`, `Status_IdStatus`, `time_created`, `restaurant_id`) 
VALUES ('4', '1', '4', '1', '2020-02-18 17:15:39', '2');
INSERT INTO `mydb`.`Order` (`User_userId`, `User_Role_roleId`, `User_Adress_idAdress`, `Status_IdStatus`, `time_created`, `restaurant_id`) 
VALUES ('10', '4', '10', '3', '2020-02-18 17:16:39', '5');
INSERT INTO `mydb`.`Order` (`User_userId`, `User_Role_roleId`, `User_Adress_idAdress`, `Status_IdStatus`, `time_created`, `restaurant_id`) 
VALUES ('10', '4', '10', '3', NOW(), '3');
INSERT INTO `mydb`.`Order` (`User_userId`, `User_Role_roleId`, `User_Adress_idAdress`, `Status_IdStatus`, `time_created`, `restaurant_id`) 
VALUES ('5', '1', '5', '1', `2020-02-19 14:13:39`, '5');
INSERT INTO `mydb`.`Order` (`User_userId`, `User_Role_roleId`, `User_Adress_idAdress`, `Status_IdStatus`, `time_created`, `restaurant_id`) 
VALUES ('6', '1', '6', '1', `2020-02-19 14:13:39`, '4');

--insert orderline in db
SELECT * FROM mydb.OrderLine;

-- first order
INSERT INTO `mydb`.`OrderLine` (`quantity`, `unit_cost`, `Order_idOrder`, `Product_idProduct`, `Product_Category_idCategory`)
VALUES ('2', '12', '6', '2', '1');
INSERT INTO `mydb`.`OrderLine` (`quantity`, `unit_cost`, `Order_idOrder`, `Product_idProduct`, `Product_Category_idCategory`)
VALUES ('1', '12', '6', '3', '2');

-- second order
INSERT INTO `mydb`.`OrderLine` (`quantity`, `unit_cost`, `Order_idOrder`, `Product_idProduct`, `Product_Category_idCategory`)
VALUES ('1', '12', '7', '5', '1');
INSERT INTO `mydb`.`OrderLine` (`quantity`, `unit_cost`, `Order_idOrder`, `Product_idProduct`, `Product_Category_idCategory`)
VALUES ('2', '2', '7', '7', '3');

-- third order
INSERT INTO `mydb`.`OrderLine` (`quantity`, `unit_cost`, `Order_idOrder`, `Product_idProduct`, `Product_Category_idCategory`)
VALUES ('1', '12', '8', '5', '1');

-- fourth order
INSERT INTO `mydb`.`OrderLine` (`quantity`, `unit_cost`, `Order_idOrder`, `Product_idProduct`, `Product_Category_idCategory`)
VALUES ('2', '12', '9', '3', '2');

-- fifth order
INSERT INTO `mydb`.`OrderLine` (`quantity`, `unit_cost`, `Order_idOrder`, `Product_idProduct`, `Product_Category_idCategory`)
VALUES ('2', '12', '10', '2', '1');

-- sixth command
INSERT INTO `mydb`.`OrderLine` (`quantity`, `unit_cost`, `Order_idOrder`, `Product_idProduct`, `Product_Category_idCategory`)
VALUES ('3', '12', '11', '6', '1');

-- seventh command
INSERT INTO `mydb`.`OrderLine` (`quantity`, `unit_cost`, `Order_idOrder`, `Product_idProduct`, `Product_Category_idCategory`)
VALUES ('2', '12', '12', '1', '1');
INSERT INTO `mydb`.`OrderLine` (`quantity`, `unit_cost`, `Order_idOrder`, `Product_idProduct`, `Product_Category_idCategory`)
VALUES ('1', '12', '12', '4', '1');
INSERT INTO `mydb`.`OrderLine` (`quantity`, `unit_cost`, `Order_idOrder`, `Product_idProduct`, `Product_Category_idCategory`)
VALUES ('2', '2', '12', '9', '3');


-- Eight command
INSERT INTO `mydb`.`OrderLine` (`quantity`, `unit_cost`, `Order_idOrder`, `Product_idProduct`, `Product_Category_idCategory`)
VALUES ('2', '12', '15', '4', '1');
INSERT INTO `mydb`.`OrderLine` (`quantity`, `unit_cost`, `Order_idOrder`, `Product_idProduct`, `Product_Category_idCategory`)
VALUES ('2', '12', '15', '5', '1');
INSERT INTO `mydb`.`OrderLine` (`quantity`, `unit_cost`, `Order_idOrder`, `Product_idProduct`, `Product_Category_idCategory`)
VALUES ('1', '2', '15', '8', '3');
INSERT INTO `mydb`.`OrderLine` (`quantity`, `unit_cost`, `Order_idOrder`, `Product_idProduct`, `Product_Category_idCategory`)
VALUES ('2', '3', '15', '11', '4');

--Nineth command
INSERT INTO `mydb`.`OrderLine` (`quantity`, `unit_cost`, `Order_idOrder`, `Product_idProduct`, `Product_Category_idCategory`)
VALUES ('1', '12', '16', '4', '1');

-- insert in db payment
INSERT INTO `mydb`.`Payment`(`date_time_payment`,`amount_payment`,`type_payment`, `Order_idOrder`)
VALUES(`2020-02-18 17:02:00`,`36.00`,`CREDIT CARD`,`6`);

INSERT INTO `mydb`.`Payment`(`date_time_payment`,`amount_payment`,`type_payment`, `Order_idOrder`)
VALUES(`2020-02-18 17:03:00`,`16.00`,`CREDIT CARD`,`7`);

INSERT INTO `mydb`.`Payment`(`date_time_payment`,`amount_payment`,`type_payment`, `Order_idOrder`)
VALUES(`2020-02-18 17:05:58`,`12.00`,`CREDIT CARD`,`8`);

INSERT INTO `mydb`.`Payment`(`date_time_payment`,`amount_payment`,`type_payment`, `Order_idOrder`)
VALUES(`2020-02-18 17:14:59`,`24.00`,`CREDIT CARD`,`9`);

INSERT INTO `mydb`.`Payment`(`date_time_payment`,`amount_payment`,`type_payment`, `Order_idOrder`)
VALUES(`2020-02-18 17:16:00`,`24.00`,`CREDIT CARD`,`10`);

INSERT INTO `mydb`.`Payment`(`date_time_payment`,`amount_payment`,`type_payment`, `Order_idOrder`)
VALUES(`2020-02-18 17:17:00`,`36.00`,`CASH`,`11`);

INSERT INTO `mydb`.`Payment`(`date_time_payment`,`amount_payment`,`type_payment`, `Order_idOrder`)
VALUES(`2020-02-19 14:30:00`,`40.00`,`CASH`,`12`);

INSERT INTO `mydb`.`Payment`(`date_time_payment`,`amount_payment`,`type_payment`, `Order_idOrder`)
VALUES(`2020-02-19 14:14:01`,`56.00`,`CREDIT CARD`,`15`);

INSERT INTO `mydb`.`Payment`(`date_time_payment`,`amount_payment`,`type_payment`, `Order_idOrder`)
VALUES(`2020-02-19 14:30:02`,`12.00`,`CREDIT CARD`,`16`);











