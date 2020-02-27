-- This file is for the demo with the database

-- DEMO_1 : J'aimerai afficher toutes les commandes en status "order_is_delivered"
-- et le nom des restaurants concernés (on change le status pour vérifier les autres)

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


-- DEMO_2 : J'aimerai savoir le détail d'une grosse commande qui vient 
-- d'arriver (visualiser toute les Orderlines présentent pour 1 commande
-- précise) - on change le n° de commande pour vérifier les autres cmds.

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


-- DEMO_3 : je souhaite avoir l'adresse du user de la commande X (livreur)
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


-- DEMO_4 : Je souhaite savoir quel ingrédient à une la quantité 
-- qui est égale à 0 dans un de mes restaurants (gérant, cuisine)

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