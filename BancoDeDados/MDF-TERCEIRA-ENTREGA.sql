create database alVibes;
use alVibes;

CREATE TABLE passagem (
    id int PRIMARY KEY NOT NULL auto_increment,
    classe varchar(40),
    qtdPassageiro varchar(40),
    partida varchar(40),
    destino varchar(40),
    dataIda date,
    dataVolta date,
    fk_usuario_email varchar(60)
);

CREATE TABLE usuario (
    nome varchar(40),
    email varchar(60) PRIMARY KEY,
    senha varchar(12),
    fone varchar(12)
);
 
ALTER TABLE passagem ADD CONSTRAINT FK_passagem_2
    FOREIGN KEY (fk_usuario_email)
    REFERENCES usuario (email)
    ON DELETE RESTRICT;