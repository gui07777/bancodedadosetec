CREATE DATABASE Pascotto;

USE Pascotto;

CREATE TABLE Produtos (
idProduto INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(200),
preco INT,
quantidade_em_estoque INT,
fornecedor_id INT
);

CREATE TABLE Fornecedores (
idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(200),
cnpj INT,
telefone INT,
cpf INT
);

CREATE TABLE Colaborador (
idColaborador INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(200),
cargo VARCHAR(200),
salario INT
);

CREATE TABLE Pedidos (
idPedido INT AUTO_INCREMENT PRIMARY KEY,
data_pedido DATE NOT NULL,
colaborador_id INT,
produto_id INT,
quantidade INT,
FOREIGN KEY (colaborador_id) REFERENCES Colaborador(idColaborador),
FOREIGN KEY (produto_id) REFERENCES Produtos(idProduto)
);

SELECT * FROM Produtos;

SELECT * FROM Fornecedores;


ALTER TABLE Fornecedores
ADD email INT;

ALTER TABLE Fornecedores
DROP cpf;

INSERT INTO Produtos (nome, preco, quantidade_em_estoque, fornecedor_id) VALUES
('Caderno', 20, 100, 1),
('Lapis', 3, 200, 2)
;

INSERT INTO Fornecedores (nome, cnpj, telefone, email) VALUES
('CleitonCadernos', 111111111111, 3333333333, 'Cleitoncadernos@email'),
('SueliLapis', 444444444444, 6666666666, 'Suelilapis@email')
;

INSERT INTO Colaborador (nome, cargo, salario) VALUES
('Cleiton', 'Vendedor', 4),
('Sueli', 'Vendedora', 100)
;

INSERT INTO Pedidos (data_pedido, colaborador_id, produto_id, quantidade) VALUES
(2025-04-30, 1, 1, 20),
(2025-05-01, 2, 2, 40)
;


CREATE TABLE Categorias (
idCategoria INT AUTO_INCREMENT PRIMARY KEY,
nomeCategoria VARCHAR(200)
);

ALTER TABLE Produtos
ADD categoria_id INT,
ADD FOREIGN KEY (categoria_id) REFERENCES Categorias(idCategoria)
;

ALTER TABLE Produtos
ADD FOREIGN KEY (fornecedor_id) REFERENCES Fornecedores(idFornecedor);

UPDATE Colaborador SET salario = 200 where id = 1;

SELECT * FROM Colaborador;

SELECT Produtos.nome AS nome_produto,
Fornecedores.nome AS nome_fornecedor

FROM Produtos

INNER JOIN Produtos ON idFornecedor = Produtos.id;