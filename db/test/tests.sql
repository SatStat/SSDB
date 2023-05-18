/**
 * @file    tests.sql
 * @author  Diego Anestor Coutinho
 * @author  Paulo Henrique Lopes Jr.
 * @date    May 2023
 * @brief   Banco de Dados App Challenge 2K23
*/

-- Insere dados na tabela planos
INSERT INTO planos (nome, franquiaDiurna, franquiaNoturna, download, upload, preco) VALUES ('Plano 1', 100, 100, 100, 100, 100);

-- Insere dados na tabela cliente
INSERT INTO client (planoID, nome, senha, zipCode) VALUES (1, 'Diego', '123', 12345678);

-- Insere dados na tabela records
INSERT INTO records (clientID, consumoDiurno, consumoNoturno, consumoMaximo, ultimoUpdate) VALUES (1, 99, 99, 99, now());

-- Insere dados na tabela problemas
INSERT INTO problemas (nome, nivel, descricao) VALUES ('chuva', 1, 'pode causar instabilidade na rede');

-- Insere dados na tabela avisos
INSERT INTO avisos (problemasID, zipCode) VALUES (1, 12345678);
INSERT INTO avisos (problemasID, zipCode) VALUES (1, 22233344);