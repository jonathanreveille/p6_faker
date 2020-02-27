-- DEMO_0 : J'aimerai afficher toutes les commandes en status "order_is_delivered"
-- et le nom des restaurants concernés

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


-- DEMO_1 : Je souhaite savoir quel ingrédient à une la quantité 
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
WHERE Restaurant_has_Ingredient.quantity < 300;

-- On pourrait ajouter une quantité d'alerte pour recommande du stock d'un ingrédient
-- avec les symboles > ou < ou = par rapport à une quantité déterminée


-- DEMO_2 : J'aimerai savoir le détail d'une grosse commande qui vient 
-- d'arriver (visualiser toute les Orderlines présentent pour 1 commande
-- précise)

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


-- DEMO_3 : Je souhaite connaître l'adresse d'un utilisateur (choisir un chiffre des 
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