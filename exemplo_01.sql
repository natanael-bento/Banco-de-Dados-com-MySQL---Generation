
CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(255),
	preco DECIMAL(6,2),
    
    PRIMARY KEY(id)
);
    SELECT * FROM tb_produtos;

    INSERT INTO tb_produtos(nome_produto, preco)
    VALUES ("Maçã", 3.00), ("Banana", 5.00);
    
-- Desativao modo seguro do mysql
   SET SQL_SAFE_UPDATES = 0;
-- atualizar um dado dentro da tabela
  UPDATE tb_produtos SET  preco = 7.90 WHERE id = 2;
    