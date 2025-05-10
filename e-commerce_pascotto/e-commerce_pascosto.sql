CREATE DATABASE lojapascoto;
USE lojapascoto;

CREATE TABLE Cliente (
nome VARCHAR(200),
id_client INT AUTO_INCREMENT PRIMARY KEY,
endereço VARCHAR(200)
);

CREATE TABLE Pedido (
id_pedido INT AUTO_INCREMENT PRIMARY KEY,
id_client INT,
data_de_pedido DATE,
FOREIGN KEY (id_client) REFERENCES Cliente(id_client)
);

CREATE TABLE Produto (
id_produto INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (200),
estoque INT
);

CREATE TABLE itens_pedido (
id_item INT PRIMARY KEY AUTO_INCREMENT,
id_pedido INT,
id_produto INT,
FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE funcionarios (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cargo VARCHAR(50)
);

SELECT * FROM Cliente;
SELECT * FROM Pedido;
SELECT * FROM Produto;

INSERT INTO Produto (id_produto, nome, estoque)
VALUES
  (1, 'Caneta', 100),
  (2, 'Caderno', 50),
  (3, 'Borracha', 200);
  
  
