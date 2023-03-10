CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
   id INT AUTO_INCREMENT,
   classe VARCHAR(40),
   missaoFinal VARCHAR(100),
   
   PRIMARY KEY(id)
);

CREATE TABLE tb_personagem (
   id INT AUTO_INCREMENT,
   
   nomePersonagem VARCHAR(50),
   arma VARCHAR(50),
   poderAtaque INT, 
   poderDefesa INT,
   mana INT,
   poderCura INT,
   destreza INT,
   sorte INT,
   chave INT,
   
   PRIMARY KEY(id),
   FOREIGN KEY(chave) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(classe, missaoFinal) 
VALUES ("Arqueiro", "Se tornar um Deus"),
("Guerreiro", "Ser escolhido por um Churrumino"), 
("Tanque", "Matar um dragão azul sozinho"), 
("Assassino", "[ ]"), 
("Mago", "Matar um grifo sem usar magias");

INSERT INTO tb_personagem(nomePersonagem, arma, poderAtaque, poderDefesa, mana, poderCura, destreza, sorte, chave)
VALUES
   ("Filgor", "Arco e flecha", 1700, 1800, 22, 3000, 8, 7, 1), 
   ("Alexander", "Espadas", 4500, 5000, 50, 5000, 9, 4, 2),
   ("Amelia", "Besta", 5500, 4000, 40, 4800, 5, 7, 1), 
   ("JonJonc", "Espada Bumerangue", 3600, 2500, 50, 3800, 10, 8, 4),
   ("Jasmi", "Cajado", 1900, 2500, 32, 3800, 7, 8, 5), 
   ("Pedrita", "Escudo e lança", 4500, 4500, 30, 6000, 4, 9, 3),
   ("Carcise", "[ ]", 2500, 3900, 40, 4500, 8, 8, 4),
   ("Mondie", "Mãos livres", 4000, 5500, 36, 6000, 9, 6, 3);

SELECT * FROM tb_personagem WHERE poderAtaque >  2000;

SELECT * FROM tb_personagem WHERE poderDefesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE nomePersonagem LIKE "%C%";

SELECT * 
FROM tb_personagem
INNER JOIN tb_classes 
ON tb_personagem.chave = tb_classes.id;

SELECT * 
FROM tb_personagem INNER JOIN tb_classes
ON tb_personagem.chave = tb_classes.id 
WHERE tb_classes.classe= "Arqueiro";
 










