-- Brouillon -- choisir le status 5 des commandes générales

SELECT Order.idOrder,
Order.Status_IdStatus,
Status.status_name,
Restaurant.restaurant_name
Order.restaurant_id,

FROM mydb.Order
LEFT JOIN mydb.Status
	ON Order.Status_idStatus = Status.IdStatus
    
LEFT JOIN mydb.Restaurant
	ON Order.restaurant_id = Restaurant.idRestaurant
WHERE Status_IdStatus = 5;

-- v2 backup
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




-- selection d'un restaurant avec un stock d'un ingrédient à 0
-- ou simple mais assez d'information (seulement les clés primaires s'affichent): 
SELECT Restaurant_idRestaurant as restaurant_id,
Ingredient_idIngredient as ingredient_id,
Restaurant_has_Ingredient.quantity
FROM mydb.Restaurant_has_Ingredient
WHERE quantity = 0;
