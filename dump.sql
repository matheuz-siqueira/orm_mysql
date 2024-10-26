-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS orm_mysql;
USE orm_mysql;

-- Criação da tabela clientes
CREATE TABLE IF NOT EXISTS clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL
);

-- Criação da tabela fornecedores
CREATE TABLE IF NOT EXISTS fornecedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18) UNIQUE NOT NULL,
    endereco VARCHAR(150) NOT NULL,
    telefone VARCHAR(15) NOT NULL
);

-- Inserção de registros fictícios na tabela clientes
INSERT INTO clientes (nome, telefone, cpf) VALUES
('João Silva', '11987654321', '123.456.789-00'),
('Maria Oliveira', '21987654322', '234.567.890-11'),
('Carlos Souza', '31987654323', '345.678.901-22'),
('Ana Santos', '41987654324', '456.789.012-33'),
('Paulo Costa', '51987654325', '567.890.123-44'),
('Lucia Lima', '61987654326', '678.901.234-55'),
('Rafael Rocha', '71987654327', '789.012.345-66'),
('Fernanda Almeida', '81987654328', '890.123.456-77'),
('Gustavo Fernandes', '91987654329', '901.234.567-88'),
('Patricia Araujo', '11987654330', '012.345.678-99');

-- Inserção de registros fictícios na tabela fornecedores com nomes de empresas fictícias
INSERT INTO fornecedores (nome, cnpj, endereco, telefone) VALUES
('Tech Solutions Ltda', '12.345.678/0001-00', 'Avenida das Nações, 123', '1134567890'),
('Distribuidora Global S.A.', '23.456.789/0001-11', 'Rua Internacional, 234', '2134567890'),
('Alimentos Express Eireli', '34.567.890/0001-22', 'Estrada da Colheita, 345', '3134567890'),
('Mundo das Ferragens Ltda', '45.678.901/0001-33', 'Rua das Ferramentas, 456', '4134567890'),
('Papelaria Central ME', '56.789.012/0001-44', 'Avenida Central, 567', '5134567890'),
('Construtora Ideal S.A.', '67.890.123/0001-55', 'Rua das Obras, 678', '6134567890'),
('Petro Química Ltda', '78.901.234/0001-66', 'Rua do Petróleo, 789', '7134567890'),
('Moda Atual Eireli', '89.012.345/0001-77', 'Rua das Confecções, 890', '8134567890'),
('Auto Peças Brasil Ltda', '90.123.456/0001-88', 'Avenida Automotiva, 901', '9134567890'),
('Eletro House S.A.', '01.234.567/0001-99', 'Rua dos Eletrônicos, 101', '1034567890');
