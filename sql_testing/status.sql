use mydb;
SELECT * FROM mydb.Status;

INSERT INTO status (status_name) VALUES("order_is_received_by_restaurant");
INSERT INTO status (status_name) VALUES("order_in_preparation");
INSERT INTO status (status_name) VALUES("order_ready_to_go");
INSERT INTO status (status_name) VALUES("order_in_delivery");
INSERT INTO status (status_name) VALUES("order_is_delivered");