Microsoft Windows [versão 10.0.26200.7019]
(c) Microsoft Corporation. Todos os direitos reservados.

C:\Users\nayara>psql -U postgres -d usuarios_contatos
Senha para o usuário postgres:

psql (18.0)
ADVERTÊNCIA: A página de código da console (850) difere da página de código do Windows (1252)
             os caracteres de 8 bits podem não funcionar corretamente. Veja a página de
             referência do psql "Notes for Windows users" para obter detalhes.
Digite "help" para obter ajuda.

usuarios_contatos=# DROP TABLE usuarios;
DROP TABLE
usuarios_contatos=# CREATE TABLE usuarios (
usuarios_contatos(# id SERIAL PRIMARY KEY,
usuarios_contatos(# nome VARCHAR(100),
usuarios_contatos(# email VARCHAR(100)
usuarios_contatos(# telefone VARCHAR(20)
usuarios_contatos(# );
ERRO:  erro de sintaxe em ou próximo a "telefone"
LINHA 5: telefone VARCHAR(20)
         ^
usuarios_contatos=# CREATE TABLE usuarios (
usuarios_contatos(# id SERIAL PRIMARY KEY,
usuarios_contatos(# nome VARCHAR(100),
usuarios_contatos(# email VARCHAR(100),
usuarios_contatos(# telefone VARCHAR(20)
usuarios_contatos(# );
CREATE TABLE
usuarios_contatos=# INSERT INTO usuarios (nome, email, telefone) VALUES
usuarios_contatos-# ("Ana Amora", "ana.amora@gmail.com", "11988887777"),
usuarios_contatos-# ("Bernando Bianca", "bernardo.bianca@gmail.com", "21999996666"),
usuarios_contatos-# ("Cláudio Coelho", "claudio.coelho@gmail.com", "11922223333"),
usuarios_contatos-# ("Dandara Pimentel", "denis.pimentel@gmail.com", "31988887777"),
usuarios_contatos-# ("Erasmo Carlos", "eramos.carlos@gmail.com", "11955554444"),
usuarios_contatos-# ("Ferdinand Almeida", "ferdinand.almeida@gmail.com", "11944443333"),
usuarios_contatos-# ("Gulliver Galvan", "gulliver.galvan@gmail.com", "11933332222"),
usuarios_contatos-# ("Heracles Bezerra", "heracles.bezerra@gmail.com", "11922221111"),
usuarios_contatos-# ("Ícaro Pena", "icaro.pena@gmail.com", "21977778888"),
usuarios_contatos-# "Jucelina Wonka", "jucelina.wonka@gmail.com", "31966665555");
ERRO:  erro de sintaxe em ou próximo a ""Jucelina Wonka""
LINHA 11: "Jucelina Wonka", "jucelina.wonka@gmail.com", "31966665555")...
          ^
usuarios_contatos=# ("Ana Amora", "ana.amora@gmail.com", "11988887777"),
usuarios_contatos-# ("Bernando Bianca", "bernardo.bianca@gmail.com", "21999996666"),
usuarios_contatos-# ("Cláudio Coelho", "claudio.coelho@gmail.com", "11922223333"),
usuarios_contatos-# ("Dandara Pimentel", "denis.pimentel@gmail.com", "31988887777"),
usuarios_contatos-# ("Erasmo Carlos", "eramos.carlos@gmail.com", "11955554444"),
usuarios_contatos-# ("Ferdinand Almeida", "ferdinand.almeida@gmail.com", "11944443333"),
usuarios_contatos-# ("Gulliver Galvan", "gulliver.galvan@gmail.com", "11933332222"),
usuarios_contatos-# ("Heracles Bezerra", "heracles.bezerra@gmail.com", "11922221111"),
usuarios_contatos-# ("Ícaro Pena", "icaro.pena@gmail.com", "21977778888"),
usuarios_contatos-# ("Jucelina Wonka", "jucelina.wonka@gmail.com", "31966665555");
ERRO:  erro de sintaxe em ou próximo a ""Ana Amora""
LINHA 1: ("Ana Amora", "ana.amora@gmail.com", "11988887777"),
          ^
usuarios_contatos=# INSERT INTO usuarios (nome, email, telefone) VALUES
usuarios_contatos-# ("Ana Amora", "ana.amora@gmail.com", "11988887777");
ERRO:  coluna "Ana Amora" não existe
LINHA 2: ("Ana Amora", "ana.amora@gmail.com", "11988887777");
          ^
usuarios_contatos=# select * from usuarios
usuarios_contatos-# select * from usuarios;
ERRO:  erro de sintaxe em ou próximo a "select"
LINHA 2: select * from usuarios;
         ^
usuarios_contatos=# SELECT * FROM usuarios;
 id | nome | email | telefone
----+------+-------+----------
(0 linha)


usuarios_contatos=# INSERT INTO usuarios (nome, email, telefone) VALUES
usuarios_contatos-# ('Ana Amora', 'ana.amora@gmail.com', '11988887777');
INSERT 0 1
usuarios_contatos=# INSERT INTO usuarios (nome, email, telefone) VALUES
usuarios_contatos-# ('Bernando Bianca', 'bernardo.bianca@gmail.com', '21999996666'),
usuarios_contatos-# ('Cláudio Coelho', 'claudio.coelho@gmail.com', '11922223333'),
usuarios_contatos-# ('Dandara Pimentel', 'denis.pimentel@gmail.com', '31988887777'),
usuarios_contatos-# ('Erasmo Carlos', 'eramos.carlos@gmail.com', '11955554444'),
usuarios_contatos-# ('Ferdinand Almeida', 'ferdinand.almeida@gmail.com', '11944443333'),
usuarios_contatos-# ('Gulliver Galvan', 'gulliver.galvan@gmail.com', '11933332222'),
usuarios_contatos-# ('Heracles Bezerra', 'heracles.bezerra@gmail.com', '11922221111'),
usuarios_contatos-# ('Ícaro Pena', 'icaro.pena@gmail.com', '21977778888'),
usuarios_contatos-# ('Jucelina Wonka', 'jucelina.wonka@gmail.com', '31966665555');
INSERT 0 9
usuarios_contatos=# UPDATE usuarios SET nome = 'Ana Amora Barcellos' WHERE id = 1;
UPDATE 1
usuarios_contatos=# SELECT * FROM usuarios;
 id |        nome         |            email            |  telefone
----+---------------------+-----------------------------+-------------
  2 | Bernando Bianca     | bernardo.bianca@gmail.com   | 21999996666
  3 | Cláudio Coelho      | claudio.coelho@gmail.com    | 11922223333
  4 | Dandara Pimentel    | denis.pimentel@gmail.com    | 31988887777
  5 | Erasmo Carlos       | eramos.carlos@gmail.com     | 11955554444
  6 | Ferdinand Almeida   | ferdinand.almeida@gmail.com | 11944443333
  7 | Gulliver Galvan     | gulliver.galvan@gmail.com   | 11933332222
  8 | Heracles Bezerra    | heracles.bezerra@gmail.com  | 11922221111
  9 | Ícaro Pena          | icaro.pena@gmail.com        | 21977778888
 10 | Jucelina Wonka      | jucelina.wonka@gmail.com    | 31966665555
  1 | Ana Amora Barcellos | ana.amora@gmail.com         | 11988887777
(10 linhas)


usuarios_contatos=# DELETE FROM usuarios WHERE id = 10;
DELETE 1
usuarios_contatos=# SELECT * FROM usuarios;
 id |        nome         |            email            |  telefone
----+---------------------+-----------------------------+-------------
  2 | Bernando Bianca     | bernardo.bianca@gmail.com   | 21999996666
  3 | Cláudio Coelho      | claudio.coelho@gmail.com    | 11922223333
  4 | Dandara Pimentel    | denis.pimentel@gmail.com    | 31988887777
  5 | Erasmo Carlos       | eramos.carlos@gmail.com     | 11955554444
  6 | Ferdinand Almeida   | ferdinand.almeida@gmail.com | 11944443333
  7 | Gulliver Galvan     | gulliver.galvan@gmail.com   | 11933332222
  8 | Heracles Bezerra    | heracles.bezerra@gmail.com  | 11922221111
  9 | Ícaro Pena          | icaro.pena@gmail.com        | 21977778888
  1 | Ana Amora Barcellos | ana.amora@gmail.com         | 11988887777
(9 linhas)


usuarios_contatos=# CREATE TABLE contatos (
usuarios_contatos(# id SERIAL PRIMARY KEY,
usuarios_contatos(# usuario_id INT REFERENCES usuarios(id),
usuarios_contatos(# tipo VARCHAR(20),
usuarios_contatos(# descricao VARCHAR (100),
usuarios_contatos(# valor VARCHAR(100)
usuarios_contatos(# );
CREATE TABLE
usuarios_contatos=# DELETE FROM usuarios WHERE id = 5;
DELETE 1
usuarios_contatos=# SELECT * FROM contatos;
 id | usuario_id | tipo | descricao | valor
----+------------+------+-----------+-------
(0 linha)


usuarios_contatos=# INSERT INTO contatos (usuario_id, tipo, valor)
usuarios_contatos-# SELECT id, 'email', email FROM usuarios WHERE email IS NOT NULL;
INSERT 0 8
usuarios_contatos=# INSERT INTO contatos (usuario_id, tipo, valor)
usuarios_contatos-# SELECT id, 'telefone', telefone FROM usuarios WHERE telefone IS NOT NULL;
INSERT 0 8
usuarios_contatos=# SELECT * FROM usuarios;
 id |        nome         |            email            |  telefone
----+---------------------+-----------------------------+-------------
  2 | Bernando Bianca     | bernardo.bianca@gmail.com   | 21999996666
  3 | Cláudio Coelho      | claudio.coelho@gmail.com    | 11922223333
  4 | Dandara Pimentel    | denis.pimentel@gmail.com    | 31988887777
  6 | Ferdinand Almeida   | ferdinand.almeida@gmail.com | 11944443333
  7 | Gulliver Galvan     | gulliver.galvan@gmail.com   | 11933332222
  8 | Heracles Bezerra    | heracles.bezerra@gmail.com  | 11922221111
  9 | Ícaro Pena          | icaro.pena@gmail.com        | 21977778888
  1 | Ana Amora Barcellos | ana.amora@gmail.com         | 11988887777
(8 linhas)


usuarios_contatos=# ALTER TABLE usuarios DROP COLUMN email, DROP COLUMN telefone;
ALTER TABLE
usuarios_contatos=# CREATE INDEX idx_contatos_valor ON contatos(valor);
CREATE INDEX
usuarios_contatos=# SELECT * FROM usuarios;
 id |        nome
----+---------------------
  2 | Bernando Bianca
  3 | Cláudio Coelho
  4 | Dandara Pimentel
  6 | Ferdinand Almeida
  7 | Gulliver Galvan
  8 | Heracles Bezerra
  9 | Ícaro Pena
  1 | Ana Amora Barcellos
(8 linhas)


usuarios_contatos=# SELECT * FROM contatos;
 id | usuario_id |   tipo   | descricao |            valor
----+------------+----------+-----------+-----------------------------
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
(16 linhas)


usuarios_contatos=# CREATE INDEX IF NOT EXISTS idx_contatos_valor ON contatos(valor);
NOTA:  relação "idx_contatos_valor" já existe, ignorando
CREATE INDEX
usuarios_contatos=# EXPLAIN ANALYZE
usuarios_contatos-# SELECT * FROM contatos WHERE valor = 'ana@email.com';
                                              QUERY PLAN
-------------------------------------------------------------------------------------------------------
 Seq Scan on contatos  (cost=0.00..1.20 rows=1 width=502) (actual time=0.021..0.021 rows=0.00 loops=1)
   Filter: ((valor)::text = 'ana@email.com'::text)
   Rows Removed by Filter: 16
   Buffers: shared hit=1
 Planning:
   Buffers: shared hit=8
 Planning Time: 0.181 ms
 Execution Time: 0.044 ms
(8 linhas)


usuarios_contatos=# Index Scan using idx_contatos_valor on contatos  (cost=0.00..8.00 rows=1 width=100)
usuarios_contatos-# SELECT * FROM contatos WHERE valor = 'ana@email.com';
ERRO:  erro de sintaxe em ou próximo a "Index"
LINHA 1: Index Scan using idx_contatos_valor on contatos  (cost=0.00....
         ^
usuarios_contatos=# EXPLAIN ANALYZE
usuarios_contatos-# SELECT * FROM contatos WHERE valor = 'ana@email.com';
                                              QUERY PLAN
-------------------------------------------------------------------------------------------------------
 Seq Scan on contatos  (cost=0.00..1.20 rows=1 width=502) (actual time=0.034..0.034 rows=0.00 loops=1)
   Filter: ((valor)::text = 'ana@email.com'::text)
   Rows Removed by Filter: 16
   Buffers: shared hit=1
 Planning Time: 0.092 ms
 Execution Time: 0.069 ms
(6 linhas)


usuarios_contatos=# EXPLAIN ANALYZE
usuarios_contatos-# SELECT * FROM contatos WHERE valor = 'pena@email.com';
                                              QUERY PLAN
-------------------------------------------------------------------------------------------------------
 Seq Scan on contatos  (cost=0.00..1.20 rows=1 width=502) (actual time=0.024..0.024 rows=0.00 loops=1)
   Filter: ((valor)::text = 'pena@email.com'::text)
   Rows Removed by Filter: 16
   Buffers: shared hit=1
 Planning Time: 0.093 ms
 Execution Time: 0.039 ms
(6 linhas)


usuarios_contatos=#
