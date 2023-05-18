/**
 * @file    selects.sql
 * @author  Diego Anestor Coutinho
 * @author  Paulo Henrique Lopes Jr.
 * @date    May 2023
 * @brief   Banco de Dados App Challenge 2K23
*/

-- Apresenta as tabelas
SELECT * FROM planos;
SELECT * FROM client;
SELECT * FROM avisos;
SELECT * FROM records;
SELECT * FROM problemas;

-- Usa a função login
SELECT login('Diego', '123');

-- Usa a stored procedure getZipCode
CALL getZipCode('Diego', '123');

-- Usa o stored procedure getProblemas
CALL getProblemas(12345678);