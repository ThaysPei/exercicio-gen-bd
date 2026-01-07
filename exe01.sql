CREATE DATABASE rh_empresa;
USE rh_empresa;

CREATE TABLE colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    data_admissao DATE NOT NULL
);

INSERT INTO colaboradores (nome, cargo, salario, data_admissao) VALUES
('Ana Silva', 'Analista de RH', 2500.00, '2022-03-15'),
('Bruno Costa', 'Assistente Administrativo', 1800.00, '2023-01-10'),
('Carla Souza', 'Desenvolvedora Front-End', 3500.00, '2021-08-20'),
('Daniel Lima', 'Estagiário', 1200.00, '2024-02-01'),
('Eduarda Rocha', 'Coordenadora de RH', 4200.00, '2020-05-05');

SELECT * FROM colaboradores WHERE salario > 2000;
SELECT * FROM colaboradores WHERE salario < 2000;

SELECT * FROM colaboradores;

UPDATE colaboradores
SET salario = 1800.00, cargo = 'Assistente de TI'
WHERE id = 4;

