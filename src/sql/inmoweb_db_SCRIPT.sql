-- DATABASE: inmoweb_db

CREATE DATABASE /*!32312 IF NOT EXISTS*/ inmoweb_db;

DROP TABLE IF EXISTS user;
CREATE TABLE user(
    id INT(11) AUTO_INCREMENT,
    version INT(20) NOT NULL,
    e_mail VARCHAR(60),
    first_name VARCHAR(56),
    last_name VARCHAR(56),
    username VARCHAR(56),
    password VARCHAR(56),
  CONSTRAINT user_pk PRIMARY KEY (id)
);

DROP TABLE IF EXISTS adress;
CREATE TABLE adress (
    id INT(20) AUTO_INCREMENT,
    version INT(20) NOT NULL,
    buildings_id INT(20),
    real_estates_id INT(20),
    users_id INT(20),
    city_id INT(20),
    neighborhood VARCHAR(30),
    street VARCHAR(30),
    home_number INT(10),
  CONSTRAINT adress_pk PRIMARY KEY (id)
);

DROP TABLE IF EXISTS city;
CREATE TABLE city(
    id INT(20) AUTO_INCREMENT,
    version INT(20) NOT NULL,
    name VARCHAR (35),
  CONSTRAINT city_pk PRIMARY KEY (id)
);

DROP TABLE IF EXISTS real_estate;
CREATE TABLE real_estate(
id INT(20) AUTO_INCREMENT,
    version INT(20) NOT NULL,
    city_id INT(20),
    user_id INT(20),
name VARCHAR(30),
phone INT(15),
e_mail VARCHAR(60),
web_site VARCHAR(25),
  CONSTRAINT real_estate_pk PRIMARY KEY (id)
);

DROP TABLE IF EXISTS building;
CREATE TABLE building(
    id INT(11) AUTO_INCREMENT,
    version INT(20) NOT NULL,
    city_id INT(20),
    user_id INT(20),
    type VARCHAR(255),
    description VARCHAR(200),
    price BIGINT(20),
    operation VARCHAR(255),
  CONSTRAINT building_pk PRIMARY KEY (id)
);

delimiter $$
CREATE TRIGGER updateVersionAdress
BEFORE UPDATE ON adress
FOR EACH ROW
BEGIN
SET NEW.version = NEW.version + 1;
    END $$
delimiter;

delimiter $$
CREATE TRIGGER updateVersionBuilding
BEFORE UPDATE ON building
FOR EACH ROW
BEGIN
SET NEW.version = NEW.version + 1;
    END $$
delimiter;

delimiter $$
CREATE TRIGGER updateVersionCity
BEFORE UPDATE ON city
FOR EACH ROW
BEGIN
SET NEW.version = NEW.version + 1;
    END $$
delimiter;

delimiter $$
CREATE TRIGGER updateVersionRealEstate
BEFORE UPDATE ON real_estate
FOR EACH ROW
BEGIN
SET NEW.version = NEW.version + 1;
    END $$
delimiter;

delimiter $$
CREATE TRIGGER updateVersionUser
BEFORE UPDATE ON user
FOR EACH ROW
BEGIN
SET NEW.version = NEW.version + 1;
    END $$
delimiter ;

INSERT INTO user (e_mail,first_name,last_name,username,password)
    VALUES ('johnd@sample.com',"John","Doe",'johndoe','johndoe'),
            ('janed@osample.com',"Jane","Doe",'janedoe','janedoe'),
            ('janer@sample.com',"Jane","Roe",'janeroe','janeroe');

INSERT INTO city (name)
VALUES ('Buenos Aires'),
  ('Cordoba'),
  ('Rosario'),
  ('La Plata'),
  ('Mar del Plata'),
  ('San Miguel de Tucuman'),
  ('Salta'),
  ('Santa Fe'),
  ('Corrientes'),
  ('Bahia Blanca'),
  ('Resistencia'),
  ('Vicente Lopez'),
  ('Posadas'),
  ('Merlo'),
  ('Parana'),
  ('San Salvador de Jujuy'),
  ('Quilmes'),
  ('Santiago del Estero'),
  ('Pilar'),
  ('Banfield'),
  ('Guaymallen'),
  ('Jose C. Paz'),
  ('Lanus'),
  ('Neuquen'),
  ('Formosa'),
  ('Godoy Cruz'),
  ('Las Heras'),
  ('Gregorio de Laferrere'),
  ('Berazategui'),
  ('Gonzalez Catan'),
  ('San Miguel'),
  ('San Luis'),
  ('Moreno'),
  ('Concordia'),
  ('La Rioja'),
('San Nicolas de los Arroyos'),
  ('Río Cuarto'),
  ('Comodoro Rivadavia'),
  ('Isidro Casanova'),
  ('San Rafael'),
  ('Ituzaingo'),
  ('Florencio Varela'),
  ('San Juan'),
('Lomas de Zamora'),
  ('Temperley'),
  ('Mendoza'),
  ('Monte Grande'),
('Berna'),	
  ('San Justo'),
  ('San Carlos de Bariloche'),
  ('Castelar'),
  ('Rafael Castillo'),
  ('Trelew'),
  ('Santa Rosa'),
  ('Tandil'),
  ('Libertad');
