CREATE DATABASE db_rh_bancoIngazeira;

USE db_rh_bancoIngazeira;

CREATE TABLE tb_funcionarios(
	id INT AUTO_INCREMENT,
    nome VARCHAR(50),
    cpf VARCHAR(20),
    funcao VARCHAR(100),
    salario DECIMAL(8,2),
    turno VARCHAR(10),
    
    PRIMARY KEY(id)
    );
    
    SELECT * FROM tb_funcionarios;
    INSERT INTO tb_funcionarios(nome, cpf, funcao, salario, turno)
    VALUES ("Giovanna Patagonica", "544.458.663-45","Desenvolvedora Java Junior Front-end", 5000.00,"B"), 
    ("Fabio Martins", "087.065.456-48","Estagiario Java Junior Back-end", 1900.00,"A"),
	("Nicollas Albuquerque", "777.862.147-65","Estagiario Java Junior FullStack", 1900.00,"tb"),
	("Rebeca Silva", "255.756.781-21","Desenvolvedora Java Junior -3- Back-end", 7000.00,"B"),
	("Vitoria Park", "056.066.678-86","Desenvolvedora Java Junior -3- FullStack", 7000.00,"A");
    
    
    SELECT * FROM tb_funcionarios;
    
	SELECT * FROM tb_funcionarios WHERE salario > 2000;
    SELECT * FROM tb_funcionarios  WHERE salario < 2000;
    
    UPDATE tb_funcionarios SET salario = 10000.00  WHERE id = 5;
    UPDATE tb_funcionarios SET turno = "B"  WHERE id = 2;



