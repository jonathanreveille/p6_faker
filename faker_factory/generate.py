#! /usr/bin/env python3
# coding : utf-8

from faker import Faker

fake = Faker("fr_FR")

generate fake users

with open("users.sql", "w") as file1:
    
    id = 1

    for i in range(8):
        file1.write(f"INSERT INTO user (name, surname, email, phone, password, registerDate, Role_roleId, Adress_idAdress) VALUES ('{fake.first_name()}','{fake.last_name()}','{fake.email()}','{fake.phone_number()}','{fake.password(length=10, special_chars=True, digits=True, upper_case=True, lower_case=True)}','{fake.date_this_month(before_today=True, after_today=False)}', 4, '{id}');\n")
        id += 1



