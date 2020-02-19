#! /usr/bin/env python3
# coding : utf-8

from faker import Faker

fake = Faker("fr_FR")

#generate fake users
# with open("users.sql", "w") as file1:
#     #id = 1
#     for i in range(8):
#         file1.write(f"INSERT INTO user (name, surname, email, phone, password, registerDate, Role_roleId, Adress_idAdress) VALUES ('{fake.first_name()}','{fake.last_name()}','{fake.email()}','{fake.phone_number()}','{fake.password(length=10, special_chars=True, digits=True, upper_case=True, lower_case=True)}','{fake.date_this_month(before_today=True, after_today=False)}', 4, '{id}');\n")
#         #id += 1


id = 1
for i in range(8):
    print(f"INSERT INTO user {id}")
    id += 1


# with open("adress.sql", "w") as file2:
#     for i in range(20):
#         file2.write(f"INSERT INTO adress (bulding_number, street_name, zipcode, floor, digicode, interphone) VALUES ('{fake.first_name()}','{fake.last_name()}','{fake.email()}','{fake.phone_number()}','{fake.password(length=10, special_chars=True, digits=True, upper_case=True, lower_case=True)}','{fake.date_this_month(before_today=True, after_today=False)}');\n")


# for i in range(2):
#     print(fake.time(pattern='%H:%M:%S', end_datetime=None))