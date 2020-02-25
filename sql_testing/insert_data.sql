use mydb;
SELECT * FROM mydb.Adress;
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
INSERT INTO adress (building_number, street_name, zipcode, floor, digicode, interphone)
VALUES ('5bis', 'Rue de la Gare', '75007', '13','A1029', '14');

use mydb;
SELECT * FROM mydb.Adress;
INSERT INTO Adress (building_number, street_name, zipcode)
VALUES ("5", "Rue de Silly", "92100");
INSERT INTO Adress (building_number, street_name, zipcode)
VALUES ("78", "Rue Montparnasse", "75015");
INSERT INTO Adress (building_number, street_name, zipcode)
VALUES ("44", "Avenue de Chatelet", "75001");
INSERT INTO Adress (building_number, street_name, zipcode)
VALUES ("101", "Rue Rivoli", "75002");
INSERT INTO Adress (building_number, street_name, zipcode)
VALUES ("98", "Rue Montmartre", "75006");
INSERT INTO Adress (building_number, street_name, zipcode)
VALUES ("18", "Rue des Buttes Chaumont", "75018");

use mydb;
SELECT * FROM mydb.Category;
INSERT INTO category (name_category) VALUES ("pizza base tomate");
INSERT INTO category (name_category) VALUES ("pizza base crème");
INSERT INTO category (name_category) VALUES ("boisson");
INSERT INTO category (name_category) VALUES ("dessert");

use mydb;
SELECT * FROM mydb.Ingredient;
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("sauce tomate", "900");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("crème fraiche", "900");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("mozarella", "980");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("pâte à pizza", "1000");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("poulet émincé", "500");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("salami Piquante", "500");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("parma Ham", "500");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("lardon", "500");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("pomme de terre", "500");

use mydb;
SELECT * FROM mydb.Product;
INSERT INTO Product (name_product, category_idCategory) VALUES ("Pizza Margherita", "1");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Pizza Parma", "1");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Pizza Pollo", "2");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Pizza Pepperonni", "1");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Pizza Pepperonni y Pollo", "1");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Coca-Cola", "3");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Sprite", "3");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Fuze Tea", "3");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Tiramisu", "4");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Opéra", "4");
INSERT INTO Product (name_product, category_idCategory) VALUES ("Paris-Brest", "4");

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
VALUES ("7", "10");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("6", "11");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("8", "12");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("9", "13");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("10", "14");
INSERT INTO Product_has_Ingredient (Product_idProduct, Ingredient_idIngredient)
VALUES ("11", "15");



use mydb;
SELECT * FROM mydb.Restaurant;
INSERT INTO restaurant (restaurant_name, Adress_idAdress)
VALUES ("OC_PIZZA_1", "10");
INSERT INTO restaurant (restaurant_name, Adress_idAdress)
VALUES ("OC_PIZZA_2", "11");
INSERT INTO restaurant (restaurant_name, Adress_idAdress)
VALUES ("OC_PIZZA_3", "12");
INSERT INTO restaurant (restaurant_name, Adress_idAdress)
VALUES ("OC_PIZZA_4", "13");
INSERT INTO restaurant (restaurant_name, Adress_idAdress)
VALUES ("OC_PIZZA_5", "14");
INSERT INTO restaurant (restaurant_name, Adress_idAdress)
VALUES ("OC_PIZZA_6", "15");


use mydb;
SELECT * FROM mydb.Role;
INSERT INTO role (role_name) VALUES ("Client");
INSERT INTO role (role_name) VALUES ("Admin");
INSERT INTO role (role_name) VALUES ("Delivery");
INSERT INTO role (role_name) VALUES ("Cashier");

use mydb;
SELECT * FROM mydb.Status;
INSERT INTO status (status_name) VALUES("order_is_received_by_restaurant");
INSERT INTO status (status_name) VALUES("order_valid_by_restaurant");
INSERT INTO status (status_name) VALUES("order_in_preparation");
INSERT INTO status (status_name) VALUES("order_ready");
INSERT INTO status (status_name) VALUES("order_in_delivery");
INSERT INTO status (status_name) VALUES("order_delivered");



use mydb;
SELECT * FROM mydb.User;
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) VALUES ('Véronique','Renaud','rene67@voila.fr','06 15 47 82 83','*TJClGFZI5', 1, '1');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) VALUES ('Richard','Bourgeois','emmanuelleschmitt@ifrance.com','+33 (0)1 00 67 55 27','n$7%$55sGN', 1, '2');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) VALUES ('Aimé','Begue','sloiseau@free.fr','0379373002','Mj66LbmD@j', 1, '3');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) VALUES ('Clémence','Etienne','rroux@orange.fr','02 58 94 91 74','NtYc9Oh@f^', 1, '4');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) VALUES ('Richard','Tanguy','uchevalier@launay.fr','+33 3 74 65 63 70','VP)5CIc#vS', 1, '5');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) VALUES ('Nath','Chauvin','pgros@live.com','+33 5 86 57 94 27','_OC5BDYzc6', 1, '6');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) VALUES ('Monique','Humbert','mariebernier@baudry.fr','08 07 13 65 50','(U4NupCln_', 1, '7');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) VALUES ('Margaud','Jacquet','bonneauguillaume@wanadoo.fr','01 37 68 38 82','aaL8HRkiJ%', 1, '8');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) VALUES ('Maude','Jackie','quenneni@laposte.fr','01 49 68 49 82','aaL8HdjJ%', 1, '9');

INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) VALUES ('Employee1','Cashier','oc_pizza@oc.fr','06 72 73 45 45','oOcPiZza', 4, '10');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) VALUES ('Employee2','Delivery2','oc_delivery_pizza@oc.fr','06 93 93 89 00','sdf928JK', 3, '10');
INSERT INTO user (name, surname, email, phone, password, Role_roleId, Adress_idAdress) VALUES ('Employee3','Admin3','admin_oc_pizza@oc.fr','06 66 76 66 78','bkjzebf', 2, '13');