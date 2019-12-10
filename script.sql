--Partie 1
--Exercice 1
--Création d'une base de données languages
CREATE DATABASE `languages`;
--Création de la base de données Languages si elle n'existe pas (bonne pratique !)
CREATE DATABASE IF NOT EXISTS `languages`;
--Exercice 2
--Création de la base de données webDevelopment avec l'encodage UTF-8
CREATE DATABASE `webDevelopment` CHARACTER SET 'utf8';
--Exercice 3
--Création de la base de données frameworks avec l'encodage utf8 si elle n'existe pas déjà
CREATE DATABASE IF NOT EXISTS `frameworks` CHARACTER SET 'utf8';
--Exercice 4
--Suppression de la base de données languages
DROP DATABASE `languages`;
--Exercice 5
--Suppression de la base de données frameworks si elle existe
DROP DATABASE IF EXISTS `frameworks`;
--Partie 2
--Exercice 1
--Création de la table languages avec les colonnes id et languages
CREATE TABLE `languages` (id INT AUTO_INCREMENT PRIMARY KEY, languages VARCHAR(10));
--Exercice 2
--Création de la table tools avec les colonnes id et tools
CREATE TABLE `tools` (id INT AUTO_INCREMENT PRIMARY KEY, tool VARCHAR(100));
--Exercice 3
--Création de la table frameworks si elle n'existe pas déjà avec les colonnes id et name
CREATE TABLE IF NOT EXISTS `frameworks`(id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100));
--Exercice 4
--Suppression de la table tools si elle existe
DROP TABLE IF EXISTS `tools`;
--Exercice 5
--Création de la table clients
CREATE TABLE `clients` (id INT AUTO_INCREMENT PRIMARY KEY, lastname VARCHAR(50), firstname VARCHAR(50), birthdate DATE, address VARCHAR(100), phone INT, mail VARCHAR(150))
--Partie 3
--Exercice 1
--Ajout de la colonne versions dans la table languages de la base de données webDevelopment
USE `webdevelopment`;
ALTER TABLE `languages` ADD `versions` VARCHAR(15);
--Exercice 2
--Ajout de la colonne version dans la table frameworks de la base de données webDevelopment
USE `webdevelopment`;
ALTER TABLE `frameworks` ADD `version` INT;
--Exercice 3
--Modification du nom de la colonne versions en version dans la table languages de la BDD webDevelopment
USE `webdevelopment`;
ALTER TABLE `languages` CHANGE `versions` `version` VARCHAR(15);
--Exercice 4
--Modification du type de données dans la colonne version de la table languages de la BDD webDevelopment
USE `webdevelopment`;
ALTER TABLE `frameworks` MODIFY `version` VARCHAR(10);
--Exercice 5
--Modification du nom de la colonne phone en phoneNumber et modification du type de données de INT en VARCHAR(10)
USE `webdevelopment`;
ALTER TABLE `clients` CHANGE `phone` `phoneNumber` INT
MODIFY `phoneNumber` VARCHAR(10);
--Partie 4
--Exercice 1
--Insertion de données dans la table languages de la BDD webDevelopment
USE `webdevelopment`;
INSERT INTO `languages` (`languages`, `version`)
VALUES
('JavaScript', '5'),
('PHP', '5.2'),
('PHP', '5.4'),
('HTML', '5.1'),
('JavaScript', '6'),
('JavaScript', '7'),
('JavaScript', '8'),
('PHP', '7');
--Exercice 2
--Insertion de données dans la table frameworks de la BDD webDevelopment
USE `webdevelopment`;
INSERT INTO `frameworks` (`name`, `version`)
VALUES
('Symfony', '2.8'),
('Symfony', '3'),
('Jquery', '1.6'),
('Jquery', '2.10');
--Partie 5
--Exercice 1
--Affichage des données de la table languages
USE `webdevelopment`;
SELECT `id`, `languages`, `version`
FROM `languages`
ORDER BY `version` ASC;
--Exercice 2
--Afficher les versions de PHP dans la table languages de la BDD webDevelopment
USE `webDevelopment`;
SELECT `version`
FROM `languages`
WHERE `languages` = 'PHP';
--Exercice 3
--Afficher les lignes qui ne sont pas du PHP dans la table languages de la BDD webDevelopment
USE `webDevelopment`;
SELECT `version`
FROM `languages`
WHERE `languages` != 'PHP';
--Exercice 4
--Afficher les versions de PHP ou JavaScript dans la table Languages de la BDD webDevelopment
USE `webdevelopment`;
SELECT `version`
FROM `languages`
WHERE `languages` = 'PHP' OR `languages` = 'JavaScript';
--Exercice 5
--Afficher les versions qui ressemblent au pourcentage 2.
USE `webDevelopment`;
SELECT `id`, `name`, `version`
FROM `frameworks`
WHERE `version` LIKE 'version 2.%';
--Exercice 6
--Afficher les lignes ayant les id 1 et 3 dans la table frameworks de la BDD webDevelopment
USE `webDevelopment`;
SELECT `id`, `name`, `version`
FROM `frameworks`
WHERE `id` = 1 OR `id` = 3;
--Partie 6
--Exercice 1
--Suppression des lignes HTML dans la table languages
USE `webDevelopment`;
DELETE FROM `languages`
WHERE `languages` = 'HTML';
--Exercice 2
--Modification de Symfony en Symfony2 dans la table frameworks
USE `webDevelopment`;
UPDATE `frameworks`
SET `name` = 'Symfony2'--ici nouvelle valeur
WHERE `name` = 'Symfony';--ici ancienne valeur
--Exercice 3
--Modification des lignes indiquant JavaScript version 5 en JavaScript version 5.1
USE `webDevelopment`;
UPDATE `languages`
SET `version` = '5.1'--Nouvelle valeur
WHERE `languages` = 'JavaScript' AND `version` = '5';--condition des valeurs à modifier
