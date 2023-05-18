/**
 * @file    functions.sql
 * @author  Diego Anestor Coutinho
 * @author  Paulo Henrique Lopes Jr.
 * @date    May 2023
 * @brief   Banco de Dados App Challenge 2K23
*/

-- Reinicia as Funções
USE `satstat`;
DROP function IF EXISTS `login`;

-- Função para verficação das credenciais
DELIMITER $$
USE `satstat`$$
CREATE FUNCTION `login` (
    `nome` VARCHAR(255),
    `senha` VARCHAR(255)
)
RETURNS boolean DETERMINISTIC BEGIN
    RETURN if( EXISTS ( SELECT client.nome FROM client WHERE client.nome = nome AND client.senha = senha ), 1, 0);
END $$ DELIMITER ;