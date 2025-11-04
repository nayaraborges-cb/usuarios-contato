## Passo a passo do que foi realizado na construção do Banco de Dados instruído
Este projeto contém os passos seguidos na criação, manipulação e modificação de um banco de dados no PostgreSQL.

#### 📥 1. Instalação do PostgreSQL:
* Acesso ao site pela url: <https://www.postgresql.org/download/>
* Após download do executável segui para a instalação
  *  Para instalar segui as dicas do próprio site
* Feito isso segui para a criação e manipulação do banco de dados


#### 👩🏿‍💻 2. Criação do banco de dados:
* Pelo terminal e através do comando `psql -U postgres` acessei o console do Postgredql
* Em seguida criei o banco de dados com o `CREATE DATABASE nome_do_banco;`
* Obs.: Embora tenha utilizado o terminal, posteriormente utilizei a interface pgAdmin com informações semelhantes (exceto o nome do banco de dados)

#### 👩🏿‍💻 3. Criação da tabela usuário:
* Para criar uma tabela com as informações dos usuários (id, nome, email, telefone):
  ```
  CREATE TABLE usuarios (
     id SERIAL PRIMARY KEY,
     nome VARCHAR(100),
     email VARCHAR(100)
      telefone VARCHAR(20)
     );
  ```
#### 👩🏿‍💻 4. Inserção de dados na tabela usuários (10 registros), todos foram inseridos de uma vez
```
INSERT INTO usuarios (nome, email, telefone) VALUES
('Ana Amora', 'ana.amora@gmail.com', '11988887777'),
('Bernando Bianca', 'bernardo.bianca@gmail.com', '21999996666'),
('Cláudio Coelho', 'claudio.coelho@gmail.com', '11922223333'),
('Dandara Pimentel', 'denis.pimentel@gmail.com', '31988887777'),
('Erasmo Carlos', 'eramos.carlos@gmail.com', '11955554444'),
('Ferdinand Almeida', 'ferdinand.almeida@gmail.com', '11944443333'),
('Gulliver Galvan', 'gulliver.galvan@gmail.com', '11933332222'),
('Heracles Bezerra', 'heracles.bezerra@gmail.com', '11922221111'),
('Ícaro Pena', 'icaro.pena@gmail.com', '21977778888'),
('Jucelina Wonka', 'jucelina.wonka@gmail.com', '31966665555');
```

id	|       nome	       |               email	            |  telefone
----|--------------------|----------------------------------|-------------
1 	| Ana Amora  	       |  ana.amora@gmail.com             |	11988887777
2 	| Bernando Bianca	   |  bernardo.bianca@gmail.com       |	21999996666
3	  | Cláudio Coelho	   |  claudio.coelho@gmail.com	      | 11922223333
4 	| Dandara Pimentel   |  denis.pimentel@gmail.com        |	31988887777
5 	| Erasmo Carlos	     |  eramos.carlos@gmail.com       	| 11955554444
6	  | Ferdinand Almeida	 |  ferdinand.almeida@gmail.com	    | 11944443333
7	  | Gulliver Galvan    |  gulliver.galvan@gmail.com	      | 11933332222
8	  | Heracles Bezerra	 |  heracles.bezerra@gmail.com	    | 11922221111
9	  | Ícaro Pena         |  icaro.pena@gmail.com	          | 21977778888
10	| Jucelina Wonka	   |  jucelina.wonka@gmail.com	      | 31966665555


#### 👩🏿‍💻 5. Para editar registros na tabela:
```
UPDATE usuarios SET nome = 'Ana Amora Barcellos' WHERE id = 1;
```

id	|       nome	        |               email	             |  telefone
----|---------------------|----------------------------------|-------------
2 	| Bernando Bianca	    |  bernardo.bianca@gmail.com       | 21999996666
3	  | Cláudio Coelho	    |  claudio.coelho@gmail.com	       | 11922223333
4 	| Dandara Pimentel    |  denis.pimentel@gmail.com        | 31988887777
5 	| Erasmo Carlos	      |  eramos.carlos@gmail.com       	 | 11955554444
6	  | Ferdinand Almeida 	|  ferdinand.almeida@gmail.com	   | 11944443333
7	  | Gulliver Galvan     |  gulliver.galvan@gmail.com	     | 11933332222
8	  | Heracles Bezerra	  |  heracles.bezerra@gmail.com	     | 11922221111
9	  | Ícaro Pena          |  icaro.pena@gmail.com	           | 21977778888
10	| Jucelina Wonka	    |  jucelina.wonka@gmail.com	       | 31966665555
1 	| Ana Amora Barcellos |  ana.amora@gmail.com             | 11988887777

#### 👩🏿‍💻6. Deletar registros da tabela
* Para deletar alguns registros da tabela usuários usei o comando:
```
DELETE FROM usuarios WHERE id = 10;
DELETE FROM usuarios WHERE id = 5;
```
 id |        nome         |           email             |   telefone
----|---------------------|-----------------------------|------------
  2 | Bernando Bianca     | bernardo.bianca@gmail.com   | 21999996666
  3 | Cláudio Coelho      | claudio.coelho@gmail.com    | 11922223333
  4 | Dandara Pimentel    | denis.pimentel@gmail.com    | 31988887777
  6 | Ferdinand Almeida   | ferdinand.almeida@gmail.com | 11944443333
  7 | Gulliver Galvan     | gulliver.galvan@gmail.com   | 11933332222
  8 | Heracles Bezerra    | heracles.bezerra@gmail.com  | 11922221111
  9 | Ícaro Pena          | icaro.pena@gmail.com        | 21977778888
  1 | Ana Amora Barcellos | ana.amora@gmail.com         | 11988887777

Nesse caso foram excluídas as informações dos usuários de id 5 e 10 (5 -> Erasmo e 10-> Jucelina)

#### 👩🏿‍💻7. Criar uma tabela de contatos onde um usuário pode ter vários contatos (id, tipo de contato email ou telefone, descrição, valor) 
* Para criar essa nova tabela usei o mesmo comando mencionado anteriormente para criar a tabela, novidade é apenas a chave estrangeira usuario_id que usa o id da tabela usuarios como referência 
```
 CREATE TABLE contatos (
    id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES usuarios(id),
    tipo VARCHAR(20),
    descricao VARCHAR(100),
    valor VARCHAR(100)
);
```
#### 👩🏿‍💻8. Migrar os campos das colunas email e telefone para novos contatos deste usuário. Nesse caso os valores que estão na tabela usuários são inseridos na tabela contatos, não esquecendo de mencionar o uso da chave estrangeira como referência de cada usuário (embora eu já o tenha feito na criação da tabela contatos). 
```
INSERT INTO contatos (usuario_id, tipo, valor)
SELECT id, 'email', email FROM usuarios WHERE email IS NOT NULL;

INSERT INTO contatos (usuario_id, tipo, valor)
SELECT id, 'telefone', telefone FROM usuarios WHERE telefone IS NOT NULL;
```
Ao executar o comando SELECT * FROM contatos é gerada a tabela abaixo onde há todas as informações dos usuários monstrando os tipos (email e telefone) e o usuário pode ser indetificado pelo seu ID na coluna usuario_id. Como cada usuário tem dois contato os IDs se repetem e a tabela parece duplicada. Obs.: não preenchi a coluna descricao.
 id | usuario_id |   tipo   | descricao |            valor
----|------------|----------|-----------|-----------------------------
  1 |          2 | email    |           | bernardo.bianca@gmail.com
  2 |          3 | email    |           | claudio.coelho@gmail.com
  3 |          4 | email    |           | denis.pimentel@gmail.com
  4 |          6 | email    |           | ferdinand.almeida@gmail.com
  5 |          7 | email    |           | gulliver.galvan@gmail.com
  6 |          8 | email    |           | heracles.bezerra@gmail.com
  7 |          9 | email    |           | icaro.pena@gmail.com
  8 |          1 | email    |           | ana.amora@gmail.com
  9 |          2 | telefone |           | 21999996666
 10 |          3 | telefone |           | 11922223333
 11 |          4 | telefone |           | 31988887777
 12 |          6 | telefone |           | 11944443333
 13 |          7 | telefone |           | 11933332222
 14 |          8 | telefone |           | 11922221111
 15 |          9 | telefone |           | 21977778888
 16 |          1 | telefone |           | 11988887777


#### 👩🏿‍💻9. Deletar as colunas desnecessárias
* As colunas email e telefone foram excluídas da tabela usuário já havendo essas informações na tabela de contatos
  `ALTER TABLE usuarios DROP COLUMN email, DROP COLUMN telefone;`
  
#### 👩🏿‍💻10. Alterar a tabela de contatos e inserir índice na campo valor (que seria, possivelmente, uma chave de busca em uma aplicação)
* Alteração na tabela contatos com a criação de um índice
`CREATE INDEX idx_contatos_valor ON contatos(valor);`

Por fim, as tabela ficaram:
**Usuários**

 id |        nome
----|---------------------
  2 | Bernando Bianca
  3 | Cláudio Coelho
  4 | Dandara Pimentel
  6 | Ferdinand Almeida
  7 | Gulliver Galvan
  8 | Heracles Bezerra
  9 | Ícaro Pena
  1 | Ana Amora Barcellos

  **Contatos**

id  | usuario_id |   tipo   | descricao |            valor
----|------------|----------|-----------|-----------------------------
  1 |          2 | email    |           | bernardo.bianca@gmail.com
  2 |          3 | email    |           | claudio.coelho@gmail.com
  3 |          4 | email    |           | denis.pimentel@gmail.com
  4 |          6 | email    |           | ferdinand.almeida@gmail.com
  5 |          7 | email    |           | gulliver.galvan@gmail.com
  6 |          8 | email    |           | heracles.bezerra@gmail.com
  7 |          9 | email    |           | icaro.pena@gmail.com
  8 |          1 | email    |           | ana.amora@gmail.com
  9 |          2 | telefone |           | 21999996666
 10 |          3 | telefone |           | 11922223333
 11 |          4 | telefone |           | 31988887777
 12 |          6 | telefone |           | 11944443333
 13 |          7 | telefone |           | 11933332222
 14 |          8 | telefone |           | 11922221111
 15 |          9 | telefone |           | 21977778888
 16 |          1 | telefone |           | 11988887777



