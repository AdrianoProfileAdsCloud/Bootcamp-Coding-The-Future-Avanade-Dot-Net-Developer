

CREATE DATABASE Filmes

USE Filmes

CREATE TABLE Atores(
	Id int IDENTITY(1,1)  PRIMARY KEY NOT NULL,
	PrimeiroNome varchar(20) NULL,
	UltimoNome varchar(20) NULL,
	Genero varchar(1) NULL)

CREATE TABLE ElencoFilme(
	Id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	IdAtor int NOT NULL,
	IdFilme int NULL,
	Papel varchar(30) NULL)

CREATE TABLE Filmes(
	Id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
    Nome varchar(50) NULL,
	Ano int NULL,
	Duracao int NULL)
 
CREATE TABLE FilmesGenero(
	Id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	IdGenero int NULL,
	IdFilme int NULL)

CREATE TABLE Generos(
	Id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Genero varchar(20) NULL)

-- ADICIONANDO RELACIONAMENTO ENTRE AS TABELAS

ALTER TABLE ElencoFilme  ADD  CONSTRAINT FK__ElencoFilme__IdAtor FOREIGN KEY(IdAtor)
REFERENCES Atores (Id)

ALTER TABLE ElencoFilme ADD  CONSTRAINT FK__ElencoFilme__IdFilme FOREIGN KEY(IdFilme)
REFERENCES Filmes (Id)

ALTER TABLE FilmesGenero ADD  CONSTRAINT FK__FilmesGenero__IdFilme FOREIGN KEY(IdFilme)
REFERENCES Filmes (Id)

ALTER TABLE FilmesGenero ADD  CONSTRAINT FK__FilmesGenero__IdGenero FOREIGN KEY(IdGenero)
REFERENCES Generos (Id)

-- PRIMEIRA ENTIDADE  A SER FEITA A INSERÇÃ DE DADOS PARA REALIZAÇÃO DAS CONSULTAS NA ENTIDADE ATORES
--   OBSERVAÇÃO: AS TABELAS SEGUEM UMA ORDEM DE INSERÇÃO DE DADOS DE ACORDO COM SUAS RESPECTIVAS FORENING KEYS

INSERT  INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('James','Stewart','M')

INSERT Atores ( PrimeiroNome, UltimoNome, Genero) VALUES ('Deborah', 'Kerr', 'F')

INSERT Atores (PrimeiroNome, UltimoNome, Genero) VALUES ( 'Peter', 'OToole', 'M')

INSERT Atores (PrimeiroNome, UltimoNome, Genero) VALUES ( 'Robert', 'DeNiro', 'M')

INSERT Atores ( PrimeiroNome, UltimoNome, Genero) VALUES ( 'Harrison', 'Ford', 'M')

INSERT Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Stephen', 'Baldwin', 'M')

INSERT Atores (PrimeiroNome, UltimoNome, Genero) VALUES ( 'Jack', 'Nicholson', 'M')

INSERT Atores ( PrimeiroNome, UltimoNome, Genero) VALUES ('Mark', 'Wahlberg', 'M')

INSERT Atores ( PrimeiroNome, UltimoNome, Genero) VALUES ('Woody', 'Allen', 'M')

INSERT Atores ( PrimeiroNome, UltimoNome, Genero) VALUES ('Claire', 'Danes', 'F')

INSERT Atores ( PrimeiroNome, UltimoNome, Genero) VALUES ( 'Tim', 'Robbins', 'M')

INSERT Atores ( PrimeiroNome, UltimoNome, Genero) VALUES ('Kevin', 'Spacey', 'M')

INSERT Atores ( PrimeiroNome, UltimoNome, Genero) VALUES ( 'Kate', 'Winslet', 'F')

INSERT Atores ( PrimeiroNome, UltimoNome, Genero) VALUES ( 'Robin', 'Williams', 'M')

INSERT Atores ( PrimeiroNome, UltimoNome, Genero) VALUES ( 'Jon', 'Voight', 'M')

INSERT Atores (PrimeiroNome, UltimoNome, Genero) VALUES ( 'Ewan', 'McGregor', 'M')

INSERT Atores ( PrimeiroNome, UltimoNome, Genero) VALUES ( 'Christian', 'Bale', 'M')

INSERT Atores ( PrimeiroNome, UltimoNome, Genero) VALUES ('Maggie', 'Gyllenhaal', 'F')

INSERT Atores ( PrimeiroNome, UltimoNome, Genero) VALUES ( 'Dev', 'Patel', 'M')

INSERT Atores ( PrimeiroNome, UltimoNome, Genero) VALUES ('Sigourney', 'Weaver', 'F')

INSERT Atores ( PrimeiroNome, UltimoNome, Genero) VALUES ('David', N'Aston', N'M')

INSERT Atores ( PrimeiroNome, UltimoNome, Genero) VALUES ( 'Ali', 'Astin', 'F')

-- SEGUNDA ENTIDADE A SER FEITA A INSERÇÃ DE DADOS PARA REALIZAÇÃO DAS CONSULTAS NA ENTIDADE FILME

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Um Corpo que Cai', 1958, 128)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Os Inocentes', 1961, 100)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Lawrence da Arábia', 1962, 216)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'O Franco Atirador', 1978, 183)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Amadeus', 1984, 160)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Blade Runner', 1982, 117)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'De Olhos Bem Fechados', 1999, 159)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Os Suspeitos', 1995, 106)

INSERT Filmes (Nome, Ano, Duracao) VALUES ( 'Chinatown', 1974, 130)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Boogie Nights - Prazer Sem Limites', 1997, 155)

INSERT Filmes (Nome, Ano, Duracao) VALUES ( 'Noivo Neurótico, Noiva Nervosa', 1977, 93)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Princesa Mononoke', 1997, 134)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Um Sonho de Liberdade', 1994, 142)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Beleza Americana', 1999, 122)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Titanic', 1997, 194)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Gênio Indomável', 1997, 126)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Amargo pesadelo', 1972, 109)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Trainspotting - Sem Limites', 1996, 94)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'O Grande Truque', 2006, 130)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Donnie Darko', 2001, 113)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Quem Quer Ser um Milionário?', 2008, 120)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Aliens, O Resgate', 1986, 137)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Uma Vida sem Limites', 2004, 118)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Avatar', 2009, 162)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Coração Valente', 1995, 178)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'Os Sete Samurais', 1954, 207)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'A Viagem de Chihiro', 2001, 125)

INSERT Filmes ( Nome, Ano, Duracao) VALUES ( 'De Volta para o Futuro', 1985, 116)


-- TERCEITA ENTIDADE A SER FEITA A INSERÇÃ DE DADOS PARA REALIZAÇÃO DAS CONSULTAS NA ENTIDADE ElencoFilme

INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES ( 1, 1, 'John Scottie Ferguson')

INSERT ElencoFilme ( IdAtor, IdFilme, Papel) VALUES ( 2, 2, 'Miss Giddens')

INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (3, 3, 'T.E. Lawrence')

INSERT ElencoFilme ( IdAtor, IdFilme, Papel) VALUES ( 4, 4, 'Michael')

INSERT ElencoFilme ( IdAtor, IdFilme, Papel) VALUES ( 5, 6, 'Rick Deckard')

INSERT ElencoFilme ( IdAtor, IdFilme, Papel) VALUES ( 6, 8, 'McManus')

INSERT ElencoFilme ( IdAtor, IdFilme, Papel) VALUES ( 8, 10, 'Eddie Adams')

INSERT ElencoFilme ( IdAtor, IdFilme, Papel) VALUES ( 9, 11, 'Alvy Singer')

INSERT ElencoFilme ( IdAtor, IdFilme, Papel) VALUES ( 10, 12, 'San')

INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES ( 11, 13, 'Andy Dufresne')

INSERT ElencoFilme ( IdAtor, IdFilme, Papel) VALUES ( 12, 14, 'Lester Burnham')

INSERT ElencoFilme ( IdAtor, IdFilme, Papel) VALUES ( 13, 15, 'Rose DeWitt Bukater')

INSERT ElencoFilme ( IdAtor, IdFilme, Papel) VALUES ( 14, 16, 'Sean Maguire')

INSERT ElencoFilme ( IdAtor, IdFilme, Papel) VALUES ( 15, 17, 'Ed')


--QUARTA ENTIDADE A SER FETA A INSERÇÃ DE DADOS PARA REALIZAÇÃO DAS CONSULTAS NA ENTIDADE Generos

INSERT Generos (Genero) VALUES ('Ação')

INSERT Generos ( Genero) VALUES ( 'Aventura')

INSERT Generos ( Genero) VALUES ( 'Animação')

INSERT Generos ( Genero) VALUES ( 'Biografia')

INSERT Generos ( Genero) VALUES ( 'Comédia')

INSERT Generos ( Genero) VALUES ( 'Crime')

INSERT Generos ( Genero) VALUES ( 'Drama')

INSERT Generos ( Genero) VALUES ( 'Horror')

INSERT Generos ( Genero) VALUES ( 'Musical')

INSERT Generos ( Genero) VALUES ( 'Mistério')

INSERT Generos ( Genero) VALUES ( 'Romance')

INSERT Generos ( Genero) VALUES ( 'Suspense')

INSERT Generos ( Genero) VALUES ( 'Guerra')


-- QUINTA ENTIDADE A SER FEITA A INSERÇÃ DE DADOS PARA REALIZAÇÃO DAS CONSULTAS NA ENTIDADE FilmesGenero


INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 1, 22)

INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 2, 17)

INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 2, 3)

INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 3, 12)

INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 5, 11)

INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 6, 8)

INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 6, 13)

INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 7, 26)

INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 7, 28)

INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 7, 18)

INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 7, 21)

INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 8, 2)

INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 9, 23)

INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 10, 7)

INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 10, 27)

INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 10, 1)

INSERT FilmesGenero (IdGenero, IdFilme) VALUES ( 11, 14)

INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 12, 6)

INSERT FilmesGenero ( IdGenero, IdFilme) VALUES ( 13, 4)








