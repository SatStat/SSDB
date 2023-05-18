/**
 * @file    tables.sql
 * @author  Diego Anestor Coutinho
 * @author  Paulo Henrique Lopes Jr.
 * @date    May 2023
 * @brief   Banco de Dados App Challenge 2K23
*/

-- Reinicia as tabelas
drop table if exists records;
drop table if exists client;
drop table if exists planos;
drop table if exists avisos;
drop table if exists problemas;

-- Tabela Planos
-- planoID (primary)
-- nome
-- franquiaDiurna
-- franquiaNoturna
-- download
-- upload
-- preco

create table if not exists planos (

    planoID int auto_increment primary key,
    nome varchar(255) not null,
    franquiaDiurna int not null,
    franquiaNoturna int not null,
    download int not null,
    upload int not null,
    preco int not null
    
);

-- Tabela Client
-- clientID (primary)
-- planoID (foreign)
-- nome
-- senha
-- zipCode

create table if not exists client (

    clientID int auto_increment primary key,
    planoID int,
    nome varchar(255) not null,
    senha varchar(255) not null,
    zipCode int not null,
    ultimoBackup datetime,

    foreign key (planoID) references planos(planoID)
    
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

-- Tabela Records
-- backupID (primary)
-- clientID (foreign)
-- consumoDiurno
-- consumoNoturno
-- consumoMaximo
-- ultimoUpdate

create table if not exists records (

    backupID int auto_increment primary key,
    clientID int,
    consumoDiurno int not null,
    consumoNoturno int not null,
    consumoMaximo int not null,
    ultimoUpdate datetime,

    foreign key (clientID) references client(clientID)

    ON UPDATE CASCADE
    ON DELETE CASCADE
);

-- Tabela Problemas
-- problemasID (primary)
-- nome
-- descricao
-- nivel

create table if not exists problemas (

    id int auto_increment primary key,
    nome varchar(255) not null,
    descricao varchar(1000) not null,
    nivel int not null

);

-- Tabela Avisos
-- avisoID (primary)
-- problemasID (foreign)
-- zipCode

create table if not exists avisos (

    avisoID int auto_increment primary key,
    problemasID int,
    zipCode int not null,

    foreign key (problemasID) references problemas(id)

    ON UPDATE CASCADE
    ON DELETE CASCADE
);
