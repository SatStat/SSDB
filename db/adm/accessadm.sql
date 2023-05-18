/**
 * @file    accessadm.sql
 * @author  Diego Anestor Coutinho
 * @author  Paulo Henrique Lopes Jr.
 * @date    May 2023
 * @brief   Banco de Dados App Challenge 2K23
*/

-- Cria ponto de acesso ao Banco de Dados para os administradores
-- Restringe o número de acessos do módulo para otimizar os recursos
DROP USER IF EXISTS adm@localhost;
CREATE USER adm@localhost IDENTIFIED BY 'admin'
WITH MAX_QUERIES_PER_HOUR 2000
MAX_UPDATES_PER_HOUR 0
MAX_CONNECTIONS_PER_HOUR 500
MAX_USER_CONNECTIONS 50;

-- Concede privilégios ao usuário
GRANT ALL PRIVILEGES ON satstat.* TO adm@localhost;

-- Cria ponto de acesso ao Banco de Dados para os clientes
-- Restringe o número de acessos do módulo para otimizar os recursos
DROP USER IF EXISTS client@localhost;
CREATE USER client@localhost IDENTIFIED BY 'client'
WITH MAX_QUERIES_PER_HOUR 10000
MAX_UPDATES_PER_HOUR 0
MAX_CONNECTIONS_PER_HOUR 5000
MAX_USER_CONNECTIONS 1000;

-- Concede privilégios ao usuário
GRANT EXECUTE ON procedure satstat.getProblemas TO client@localhost;
GRANT EXECUTE ON procedure satstat.getZipCode TO client@localhost;
GRANT EXECUTE ON FUNCTION satstat.login TO client@localhost;
GRANT INSERT ON satstat.records TO client@localhost;