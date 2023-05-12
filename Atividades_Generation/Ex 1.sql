create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes (
  id INT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  descricao VARCHAR(255)
);

create table tb_personagens (
  id INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  poder_ataque INT NOT NULL,
  poder_defesa INT NOT NULL,
  id_classe INT,
  FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao) VALUES ('Guerreiro', 'Personagens fortes e habilidosos no combate corpo a corpo');
INSERT INTO tb_classes (nome, descricao) VALUES ('Mago', 'Personagens com habilidades mágicas poderosas');
INSERT INTO tb_classes (nome, descricao) VALUES ('Arqueiro', 'Personagens especializados em ataques à distância');
INSERT INTO tb_classes (nome, descricao) VALUES ('Ladino', 'Personagens furtivos e ágeis');
INSERT INTO tb_classes (nome, descricao) VALUES ('Cavaleiro', 'Personagens com montarias e habilidades de proteção');

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe) VALUES ('Gohan', 2500, 1800, 1);
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe) VALUES ('Goku', 3000, 2100, 2);
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe) VALUES ('Vegeta', 1800, 1200, 3);
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe) VALUES ('Bulma', 2200, 1900, 1);
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe) VALUES ('Frezea', 2600, 2300, 4);
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe) VALUES ('Broly', 1900, 1700, 2);
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe) VALUES ('Trunks', 2100, 1500, 3);
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe) VALUES ('Cell', 2800, 2200, 5);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%E%';

SELECT p.*, c.nome AS classe_nome FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id
WHERE c.nome = 'Arqueiro';


