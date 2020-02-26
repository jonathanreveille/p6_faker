
-- DEMO_0 : Je souhaite savoir la quantité restante de mes pâtes à pizza dans ma table ingrédient

SELECT name_ingredient, quantity
FROM mydb.Ingredient
WHERE idIngredient = 4;

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
WHERE Restaurant_has_Ingredient.quantity = 0;


-- ou simple mais assez d'information (seulement les clés primaires s'affichent): 
SELECT Restaurant_idRestaurant as restaurant_id,
Ingredient_idIngredient as ingredient_id,
Restaurant_has_Ingredient.quantity
FROM mydb.Restaurant_has_Ingredient
WHERE quantity = 0;


-- DEMO_2 : J'aimerai afficher toutes les commandes en status "order_is_delivered"
-- et le nom des restaurants concernés

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
--bug appears sometimes...

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







