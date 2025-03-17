CREATE DATABASE atividade13_03_2025;
USE atividade13_03_2025;

CREATE TABLE mercado(
	codigo_barra INT PRIMARY KEY,
    nome VARCHAR(50),
    marca VARCHAR(100),
    data_validade VARCHAR(11),
    fornecedor_cnpj VARCHAR(20),
    quantidade INT,
    preco DECIMAL
);

CREATE TABLE fornecedores(
	cnpj VARCHAR(20) PRIMARY KEY,
    nome_empresa VARCHAR(50),
    endereco VARCHAR(100),
    telefone VARCHAR(20),
    email VARCHAR(50)
);

CREATE TABLE funcionarios(
	cpf VARCHAR(15) PRIMARY KEY,
    nome VARCHAR(50),
    cargo VARCHAR(50),
    email VARCHAR(50),
    matricula INT,
    telefone VARCHAR(20),
    salario decimal
);

INSERT INTO mercado (codigo_barra, nome, marca, data_validade,fornecedor_cnpj, quantidade, preco) VALUES (123456789, "Café", "Três Corações", "12/11/2025", "12.321.321/0001-23" , 200, 30.00);
INSERT INTO fornecedores(cnpj, nome_empresa, endereco, telefone, email) VALUES ("12.321.321/0001-23", "Fazenda Paraíso", "Rua Algum lugar, 666", "0800-321", "fazendaParaiso@gmail.com");
INSERT INTO funcionarios(cpf, nome, cargo, email, matricula, telefone, salario) VALUES ("123.321.889-33", "Vinicius Fiuza", "Desenvolvedor",  "vinifp09@gmail.com",001,  "+55 11 97065-6074", 2000.00);

ALTER TABLE mercado ADD CONSTRAINT fk_mercedor FOREIGN KEY (fornecedor_cnpj) REFERENCES fornecedores (cnpj);

SELECT * FROM mercado;
SELECT * FROM fornecedores;
SELECT * FROM funcionarios;