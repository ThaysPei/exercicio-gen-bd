CREATE DATABASE db_registro_escolar;
USE db_registro_escolar;

CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    serie VARCHAR(20) NOT NULL,
    nota_final DECIMAL(3,1) NOT NULL
);

INSERT INTO tb_estudantes (nome, idade, serie, nota_final) VALUES
('Ana Paula', 14, '9º Ano', 8.5),
('Bruno Santos', 15, '9º Ano', 6.8),
('Carla Mendes', 13, '8º Ano', 7.2),
('Daniel Rocha', 14, '9º Ano', 5.9),
('Eduarda Lima', 12, '7º Ano', 9.1),
('Felipe Costa', 13, '8º Ano', 6.4),
('Gabriela Nunes', 15, '1º Ensino Médio', 7.8),
('Henrique Alves', 16, '1º Ensino Médio', 4.9);

SELECT * FROM tb_estudantes WHERE nota_final > 7.0;
SELECT * FROM tb_estudantes WHERE nota_final < 7.0;
UPDATE tb_estudantes SET nota_final = 7.3 WHERE id = 2;