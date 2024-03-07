CREATE DATABASE db_companies;

use db_companies;

CREATE TABLE tb_companies (
    id INT PRIMARY KEY AUTO_INCREMENT,
    razao_social VARCHAR(255) NOT NULL,
    cnpj VARCHAR(20) UNIQUE NOT NULL,
    logradouro VARCHAR(255) NOT NULL,
    numero VARCHAR(20) NOT NULL,
    complemento VARCHAR(255),
    municipio VARCHAR(100) NOT NULL,
    uf CHAR(2) NOT NULL
);