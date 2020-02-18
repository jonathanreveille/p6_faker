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
SELECT * FROM mydb.AdressRestaurant;
INSERT INTO AdressRestaurant (number, street, zipcode)
VALUES ("5", "Rue de Silly", "92100");
INSERT INTO AdressRestaurant (number, street, zipcode)
VALUES ("78", "Rue du Berger", "75015");
INSERT INTO AdressRestaurant (number, street, zipcode)
VALUES ("44", "Avenue de Chatelet", "75001");
INSERT INTO AdressRestaurant (number, street, zipcode)
VALUES ("101", "Boulevard de Rivoli", "75002");
INSERT INTO AdressRestaurant (number, street, zipcode)
VALUES ("98", "Rue Montmartre", "75006");

use mydb;
SELECT * FROM mydb.Category;
INSERT INTO category (name_category) VALUES ("pizza base tomate");
INSERT INTO category (name_category) VALUES ("pizza base crème");
INSERT INTO category (name_category) VALUES ("boisson");
INSERT INTO category (name_category) VALUES ("dessert");

use mydb;
SELECT * FROM mydb.Ingredient;
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("sauce tomate", "900");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("crèche fraiche", "900");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("mozarella", "980");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("pâte à pizza", "200");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Poulet émincé", "500");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Salami Piquante", "500");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Parma Ham", "500");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Lardon", "500");
INSERT INTO Ingredient (name_ingredient, quantity) VALUES ("Pomme de terre", "500");

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

use mydb;
SELECT * FROM mydb.Product_has_Ingredient;
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




use mydb;
SELECT * FROM mydb.Restaurant;
INSERT INTO restaurant (restaurant_name, AdressRestaurant_idAdressRestaurant)
VALUES ("OC_PIZZA_1", "1");
INSERT INTO restaurant (restaurant_name, AdressRestaurant_idAdressRestaurant)
VALUES ("OC_PIZZA_2", "2");
INSERT INTO restaurant (restaurant_name, AdressRestaurant_idAdressRestaurant)
VALUES ("OC_PIZZA_3", "3");
INSERT INTO restaurant (restaurant_name, AdressRestaurant_idAdressRestaurant)
VALUES ("OC_PIZZA_4", "4");
INSERT INTO restaurant (restaurant_name, AdressRestaurant_idAdressRestaurant)
VALUES ("OC_PIZZA_5", "5");

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

