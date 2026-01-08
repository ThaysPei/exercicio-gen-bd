CREATE DATABASE bd_generation_game_online;
USE bd_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    poder_base INT NOT NULL
);
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nivel INT NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    vida INT NOT NULL,
    classe_id BIGINT NOT NULL,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao, poder_base) VALUES
('Guerreiro', 'Classe focada em combate corpo a corpo', 80),
('Mago', 'Classe focada em magia e ataques à distância', 90),
('Arqueiro', 'Classe ágil com ataques de longo alcance', 75),
('Paladino', 'Classe defensiva com habilidades sagradas', 85),
('Assassino', 'Classe furtiva com alto dano crítico', 95);

INSERT INTO tb_personagens(nome, nivel, ataque, defesa, vida, classe_id) VALUES
('Thorin', 12, 85, 70, 300, 1), 
('Eldrin', 15, 95, 40, 220, 2), 
('Lyria', 10, 78, 45, 240, 3), 
('Baldur', 18, 88, 90, 350, 4), 
('Nyx', 14, 100, 35, 210, 5), 
('Ragnar', 20, 92, 85, 400, 1), 
('Selena', 16, 97, 50, 230, 2), 
('Kael', 11, 80, 60, 260, 3);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens 
WHERE defesa 
BETWEEN 1000 and 2000;

SELECT *
FROM tb_personagens
WHERE nome LIKE '%C%';

SELECT 
    p.id AS personagem_id,
    p.nome AS personagem,
    p.nivel,
    p.ataque,
    p.defesa,
    p.vida,
    c.nome AS classe,
    c.poder_base
FROM tb_personagens p
INNER JOIN tb_classes c
    ON p.classe_id = c.id;
    
SELECT 
    p.nome AS personagem,
    p.nivel,
    p.ataque,
    p.defesa,
    p.vida,
    c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c
    ON p.classe_id = c.id
WHERE c.nome = 'Arqueiro';
    
UPDATE tb_personagens SET nome = "Nic", defesa = 2100 WHERE id = 5;