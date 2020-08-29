--Authors:@Facundo Veronelli, @Dante Alfonzo, @Agustin Garone;

--GitHub:Veronelli,

--  PARAMETERS: proyect_wanze || TABLES: clients, mechanics, cars, turns, services, status, tasks || ID: id_client, id_mechanic, id_car, id_turn, id_service, id_status, id_task

CREATE DATABASE proyect_wanze;

USE proyect_wanze;

--Client
CREATE TABLE clients(

    id_client INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    last_name varchar(20),
    ID varchar(8),
    MAIL varchar(30),
    Cel_Phone varchar(12)

);
--INSERT INTO client (last_name, ID, MAIL, Cel_Phone) values ('Facundo','99277390','facu2000veronelli@outlook.com','113245502')

--Turn
CREATE TABLE turns(

    id_turn INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY fk_car_id REFERENCES cars(id_car),
    FOREIGN KEY fk_mechanic_id REFERENCES mechanics(id_mechanic),
    FOREIGN KEY fk_client_id REFERENCES clients(id_client),

    _date DATE,
    _time Time,

)