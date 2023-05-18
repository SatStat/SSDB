-- Reinicia os Triggers
USE `satstat`;
DROP TRIGGER IF EXISTS `timestamp_backup`;

-- Trigger after update para atualizar o tempo do último envio de dados para backup
DELIMITER $$
CREATE TRIGGER `timestamp_backup` 
AFTER INSERT ON records FOR EACH ROW BEGIN
    UPDATE client INNER JOIN records ON client.clientID = records.clientID SET client.ultimoBackup = NOW() WHERE records.clientID = client.clientID;
END $$ DELIMITER ;