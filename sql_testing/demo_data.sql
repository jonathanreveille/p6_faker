
-- DEMO_0 : Je souhaite savoir la quantité restante de mes pâtes à pizza dans ma table ingrédient

SELECT name_ingredient, quantity
FROM mydb.Ingredient
WHERE idIngredient = 4;

-- DEMO_1 : Je souhaite connaître l'adresse d'un utilisateur (choisir un chiffre des 
-- id utilisateur existant déjà)

SELECT User.userId,
User.name,
Adress.idAdress,
Adress.building_number,
Adress.street_name,
Adress.zipcode,
Adress.floor,
Adress.digicode,
Adress.interphone
FROM mydb.Adress
LEFT JOIN mydb.Adress
    ON Adress.idAdress = User.Adress_idAdress
WHERE User.userId = 2;


-- DEMO_2 : Je souhaite savoir quel ingrédient à une la quantité 
-- qui est égale à 0 dans un de mes restaurants

SELECT
Restaurant_has_Ingredient.quantity,
Ingredient.name_ingredient,
Restaurant.restaurant_name
FROM mydb.Restaurant_has_Ingredient
LEFT JOIN mydb.Restaurant
	ON Restaurant_has_Ingredient.Restaurant_idRestaurant = idRestaurant
LEFT JOIN mydb.Ingredient
	ON Ingredient_idIngredient = idIngredient
WHERE Restaurant_has_Ingredient.quantity = 0;


-- DEMO_3 : J'aimerai afficher toutes les commandes en status "order_is_delivered"
-- et le nom des restaurants concernés

-- This works
SELECT Order.idOrder,
Order.Status_IdStatus,
Status.status_name,
Restaurant.restaurant_name,
Order.restaurant_id
FROM mydb.Order
LEFT JOIN mydb.Status
	ON Order.Status_idStatus = Status.IdStatus
LEFT JOIN mydb.Restaurant
	ON Order.restaurant_id = Restaurant.idRestaurant
WHERE Status_IdStatus = 5;


-- selecting orders that are on STATUS 1 
SELECT Order.idOrder,
Order.Status_IdStatus,
Status.status_name,
Restaurant.restaurant_name,
Order.restaurant_id
FROM mydb.Order
LEFT JOIN mydb.Status
	ON Order.Status_idStatus = Status.IdStatus
LEFT JOIN mydb.Restaurant
	ON Order.restaurant_id = Restaurant.idRestaurant
WHERE Status_IdStatus = 1;


-- DEMO 3 : J'aimerai savoir le détail d'une grosse commande qui vient 
-- d'arriver (visualiser toute les Orderlines présentent pour 1 commande
-- précise

SELECT Order.idOrder,
OrderLine.idOrderLine,
OrderLine.Product_idProduct,
Product.name_product,
OrderLine.quantity,
OrderLine.unit_cost
FROM mydb.OrderLine
LEFT JOIN mydb.Order
    ON Order.idOrder = OrderLine.Order_idOrder
LEFT JOIN mydb.Product
    ON Product.idProduct = OrderLine.Product_idProduct
WHERE Order.idOrder = 15;


-- DEMO4 : je souhaite avoir l'adresse de la commande X
-- simple et claire
SELECT Order.idOrder,
Adress.building_number,
Adress.street_name,
Adress.zipcode,
Adress.floor,
Adress.digicode,
Adress.interphone
FROM mydb.Order
LEFT JOIN mydb.Adress
    ON Adress.idAdress =  Order.User_Adress_idAdress
WHERE Order.idOrder = 6;


-- DEMO_5 : Je souhaite connaître l'adresse d'un utilisateur (choisir un chiffre des 
-- id utilisateur existant déjà)

SELECT User.userId,
User.name,
Adress.idAdress,
Adress.building_number,
Adress.street_name,
Adress.zipcode,
Adress.floor,
Adress.digicode,
Adress.interphone
FROM mydb.Adress
LEFT JOIN mydb.Adress
    ON Adress.idAdress = User.Adress_idAdress
WHERE User.userId = 2;

-- DEMO_6 : J'ai envie de savoir si tout les ingrédients sont
-- disponibles pour une pizza dans un restaurant sélectionné

SELECT
Restaurant.restaurant_name,
Ingredient.name_ingredient,
Restaurant_has_Ingredient.quantity
FROM mydb.Restaurant_has_Ingredient
LEFT JOIN mydb.Product_has_Ingredient
	ON Product_has_Ingredient.Product_idProduct = Restaurant_has_Ingredient.Ingredient_idIngredient
LEFT JOIN mydb.Restaurant
	ON Restaurant.idRestaurant = Restaurant_has_Ingredient.Restaurant_idRestaurant
LEFT JOIN mydb.Ingredient
	ON Ingredient.idIngredient = Restaurant_has_Ingredient.Ingredient_idIngredient
WHERE Restaurant_has_Ingredient.quantity = 0;






-- DEMO_4 : J'ai envie de savoir si tout les ingrédients sont
-- disponibles pour une pizza dans un restaurant sélectionné

SELECT
Restaurant.restaurant_name,
Ingredient.name_ingredient,
Restaurant_has_Ingredient.quantity
FROM mydb.Restaurant_has_Ingredient
LEFT JOIN mydb.Product_has_Ingredient
	ON Product_has_Ingredient.Product_idProduct = Restaurant_has_Ingredient.Ingredient_idIngredient
LEFT JOIN mydb.Restaurant
	ON Restaurant.idRestaurant = Restaurant_has_Ingredient.Restaurant_idRestaurant
LEFT JOIN mydb.Ingredient
	ON Ingredient.idIngredient = Restaurant_has_Ingredient.Ingredient_idIngredient
WHERE Restaurant_has_Ingredient.quantity = 0;


