CREATE DATABASE db_ecommerce;
USE db_ecommerce;


CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL
);

INSERT INTO tb_produtos (nome, categoria, preco, estoque) VALUES
('Notebook Dell Inspiron', 'Eletrônicos', 3500.00, 10),
('Smartphone Samsung A15', 'Eletrônicos', 1200.00, 25),
('Teclado Mecânico RGB', 'Periféricos', 450.00, 40),
('Mouse Gamer', 'Periféricos', 250.00, 60),
('Monitor 27 Polegadas', 'Eletrônicos', 900.00, 15),
('Cadeira Gamer', 'Móveis', 1100.00, 8),
('Fone de Ouvido Bluetooth', 'Acessórios', 300.00, 50),
('Webcam Full HD', 'Acessórios', 550.00, 20);

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 950.00 WHERE id = 6;

SELECT * FROM tb_produtos;