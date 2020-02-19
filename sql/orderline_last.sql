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


