CREATE DATABASE bancoCD;
USE bancoCD;



CREATE TABLE musica(
cdMusica INTEGER NOT NULL PRIMARY
KEY,
nmMusica VARCHAR(50) NOT NULL,
duracao TIME NOT NULL
);

CREATE TABLE autor(
cdAutor INTEGER NOT NULL PRIMARY KEY,
nmAutor VARCHAR(50) NOT NULL
);

CREATE TABLE musicaAutor(
cdMusica INTEGER NOT NULL,
cdAutor INTEGER NOT NULL,
FOREIGN KEY (cdMusica)
REFERENCES musica(cdMusica),
FOREIGN KEY (cdAutor)
REFERENCES autor(cdAutor)
);

CREATE TABLE gravadora(
cdGravadora INTEGER NOT NULL
PRIMARY KEY,
nmGravadora VARCHAR(50) NOT NULL,
endereco VARCHAR(255) NOT NULL,
telefone INTEGER NOT NULL,
contato INTEGER NOT NULL,
website VARCHAR(80) NULL
);

CREATE TABLE cd(
cdCD INTEGER NOT NULL PRIMARY KEY,
cdGravadora INTEGER NOT NULL,
nmCD VARCHAR(50) NOT NULL,
precoVenda DECIMAL(6,2) NOT NULL,
dtLancto DATE NOT NULL,
cdIndicado INTEGER NOT NULL,
FOREIGN KEY (cdGravadora)
REFERENCES gravadora(cdGravadora),
FOREIGN KEY (cdIndicado)
REFERENCES cd(cdIndicado)
);

CREATE TABLE faixa(
cdCD INTEGER NOT NULL,
cdMusica INTEGER NOT NULL,
nroFaixa INTEGER NOT NULL PRIMARY KEY);

CREATE TABLE itemCD(
cdCD INTEGER NOT NULL,
cdMusica INTEGER NOT NULL,
nroFaixa INTEGER NOT NULL,
FOREIGN KEY(cdCD)
REFERENCES cd(cdCD),
FOREIGN KEY(cdMusica)
REFERENCES musica(cdMusica),
FOREIGN KEY (nroFaixa)
REFERENCES faixa(nroFaixa)
);

CREATE TABLE cdCategoria (
    cdCategoria INTEGER NOT NULL PRIMARY KEY,
    menorPreco DECIMAL(6 , 2 ) NOT NULL,
    maiorPreco DECIMAL(6 , 2 ) NOT NULL
);

select cdGravadora FROM gravadora

ALTER TABLE musica
ADD PRIMARY KEY(cdMusica);

select * from cdCategoria;
select cdMusica from musicaautor;

INSERT INTO musica
VALUES
  (1, 'Será', '00:02:28'),
  (2, 'Ainda é Cedo', '00:03:55'),
  (3, 'Geração Coca-Cola', '00:02:20'),
  (4, 'Eduardo e Mônica', '00:04:32'),
  (5, 'Tempo Perdido', '00:05:00'),
  (6, 'Indios', '00:04:23'),
  (7, 'Que País é este', '00:03:04'),
  (8, 'Faroeste Caboclo', '00:09:03'),
  (9, 'Há Tempos', '00:03:16'),
  (10, 'Pais e Filhos', '00:05:06'),
  (11, 'Meninos e Meninas', '00:03:22'),
  (12, 'Vento no Litoral', '00:06:05'),
  (13, 'Perfeição', '00:04:35'),
  (14, 'Giz', '00:03:20'),
  (15, 'Dezesseis', '00:05:28'),
  (16, 'Antes das Seis', '00:03:09'),
  (17, 'Meninos, Eu vi', '00:03:25'),
  (18, 'Eu te amo', '00:03:06'),
  (19, 'Piano na Mangueira', '00:02:23'),
  (20, 'A Violeira', '00:02:54'),
  (21, 'Anos Dourados', '00:02:56'),
  (22, 'Olha, Maria', '00:03:55'),
  (23, 'Biscate', '00:03:20'),
  (24, 'Retrato em Preto e Branco', '00:03:03'),
  (25, 'Falando de Amor', '00:03:20'),
  (26, 'Pois é', '00:02:48'),
  (27, 'Noite dos Mascarados', '00:02:42'),
  (28, 'Sabiá', '00:03:20'),
  (29, 'Imagina', '00:02:52'),
  (30, 'Bate-Boca', '00:04:41');
  
  INSERT INTO gravadora
VALUES
	(1, 'EMI', 'Rod. Dutra, KM 29.8', 55659856, 89657894, 'emi@emi-music.com.br'),
	(2, 'Polygram', 'Rod. Imigrantes, KM 29.8', 99659856, 75957894, 'polygram@music.com.br'),
	(3, 'BMG', 'Rod. Anchieta, KM 289.8', 99654456, 75957004, 'bmg@music.com.br'),
	(4, 'Som Livre', 'Av. São José, KM 289.8', 99657806, 78957004, 'somlivre@music.com.br'),
	(5, 'EPIC', 'Av. Alda, n. 89', 58793321, 89654789, 'epic@music.com.br');
  
  INSERT INTO autor 
VALUES
	(1,'Renato Russo'),
	(2,'Tom Jobim'),	
	(3,'Chico Buarque'),
	(4,'Dado Vila-Lobos'),
	(5,'Marcelo Bonfá'),
	(6,'Ico Ouro Preto'),
	(7,'Vinicíus de Morais');

  
select * from gravadora order by nmGravadora;

select * from musica order by cdMusica asc; 
select * from autor order by cdAutor desc;

select * from musica order by nmMusica asc;