CREATE DATABASE IF NOT EXISTS qtop_database;

CREATE TABLE IF NOT EXISTS 'qtop_database'.'cardapio' (
    id BIGINT NOT NULL AUTO_INCREMENT,
    item VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    arquivo VARCHAR(25) NOT NULL,
    primary key (id)
);

CREATE TABLE bebidas (
    id BIGINT NOT NULL AUTO_INCREMENT,
    item VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    arquivo VARCHAR(25) NOT NULL,
    primary key (id)
);

CREATE TABLE acompanhamentos (
    id BIGINT NOT NULL AUTO_INCREMENT,
    item VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    arquivo VARCHAR(25) NOT NULL,
    primary key (id)
);

CREATE TABLE sobremesas (
    id BIGINT NOT NULL AUTO_INCREMENT,
    item VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    arquivo VARCHAR(25) NOT NULL,
    primary key (id)
);

CREATE TABLE clientes (
    id BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(15) NOT NULL,
    email VARCHAR(150) NOT NULL,
    primary key (id));
