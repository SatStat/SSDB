/**
 * @file    store_proc.sql
 * @author  Diego Anestor Coutinho
 * @author  Paulo Henrique Lopes Jr.
 * @date    May 2023
 * @brief   Banco de Dados App Challenge 2K23
*/

-- Reinicia as Stored Procedures
USE `satstat`;
DROP procedure IF EXISTS `getProblemas`;
DROP procedure IF EXISTS `getZipCode`;

-- Stored Procedure para retornas os problemas dentro do zipCode do cliente
DELIMITER $$
USE `satstat`$$
CREATE PROCEDURE `getProblemas` (
    IN `zipCode` INT
)
BEGIN
    SELECT problemas.nome, problemas.nivel, problemas.descricao FROM problemas INNER JOIN avisos ON problemas.id = avisos.problemasID WHERE avisos.zipCode = zipCode;
END $$ DELIMITER ;

-- Stored proceadure para retornar o zipCode do cliente pelo nome e senha
DELIMITER $$
USE `satstat`$$
CREATE PROCEDURE `getZipCode` (
    IN `nome` VARCHAR(255),
    IN `senha` VARCHAR(255)
)
BEGIN
    SELECT client.zipCode FROM client WHERE client.nome = nome AND client.senha = senha;
END $$ DELIMITER ;