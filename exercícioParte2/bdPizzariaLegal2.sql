CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    valor DECIMAL(6,2) NOT NULL,
    categoria_id BIGINT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Pizzas salgadas tradicionais'),
('Especial', 'Pizzas salgadas com ingredientes especiais'),
('Doce', 'Pizzas doces'),
('Vegetariana', 'Pizzas sem carne'),
('Premium', 'Pizzas gourmet com ingredientes selecionados');

INSERT INTO tb_pizzas (nome, ingredientes, tamanho, valor, categoria_id) VALUES
('Margherita', 'Molho de tomate, mussarela, manjericão', 'Grande', 48.00, 1),
('Calabresa', 'Calabresa, cebola, mussarela', 'Grande', 52.00, 1),
('Quatro Queijos', 'Mussarela, gorgonzola, parmesão, provolone', 'Grande', 58.00, 2),
('Frango com Catupiry', 'Frango desfiado, catupiry', 'Grande', 60.00, 2),
('Chocolate', 'Chocolate ao leite, granulado', 'Média', 50.00, 3),
('Banana com Canela', 'Banana, canela, açúcar', 'Média', 47.00, 3),
('Vegetariana', 'Tomate, cebola, pimentão, azeitona', 'Grande', 55.00, 4),
('Mozzarella Premium', 'Mussarela especial, azeite trufado', 'Grande', 95.00, 5);


SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE '%m%';

SELECT 
    p.nome AS pizzas,
    p.valor,
    p.tamanho,
    p.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c
    ON p.categoria_id = c.id;
    
SELECT 
    p.nome AS pizza,
    p.valor,
    p.tamanho,
    c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c
    ON p.categoria_id = c.id
WHERE c.nome = 'Doce';


SELECT * FROM tb_pizzas;
SELECT * FROM tb_categorias;