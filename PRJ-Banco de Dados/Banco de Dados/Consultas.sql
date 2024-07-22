
USE Filmes;

-- 1 - Buscar o nome e ano dos filmes

		SELECT
			NOME,ANO
		FROM
			Filmes;

-- 2 - Buscar o nome,ano e duracao dos filmes, ordenados por ordem crescente pelo ano

		SELECT 
			NOME,ANO,DURACAO
		FROM
			FILMES
		ORDER BY
			ANO;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

		SELECT
			NOME,ANO,DURACAO
		FROM 
			FILMES 
		WHERE
			NOME = 'DE VOLTA PARA O FUTURO';


--4 - Buscar os filmes lançados em 1997

		SELECT 
			* 
		FROM
			FILMES 
		WHERE
			ANO = 1997;

--5 - Buscar os filmes lançados APÓS o ano 2000

		SELECT
			*
		FROM 
			FILMES
		WHERE 
			ANO > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

		SELECT
			*
		FROM
			FILMES
		WHERE	
			Duracao > 100 
		AND 
			Duracao < 150
		ORDER BY
			DURACAO 
		ASC;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

		SELECT
			ANO, COUNT(*) AS Total_de_Filmes
		FROM 
			FILMES
		GROUP BY 
			ANO
		ORDER BY
			Total_de_Filmes
		DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

		SELECT 
			PrimeiroNome,UltimoNome
		from
			ATORES 
		WHERE
			GENERO = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

		SELECT
			PrimeiroNome,UltimoNome
        FROM
		    ATORES
		WHERE
			GENERO = 'F'
		ORDER BY
			PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero

		SELECT
			F.NOME,G.GENERO 
		FROM 
			FilmesGenero AS FG 
		INNER JOIN
			GENEROS AS G ON G.ID = FG.IDGENERO
		INNER JOIN
			FILMES  AS F ON F.ID = FG.IDFILME;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
 
        SELECT
			F.NOME,G.GENERO 
		FROM 
			FilmesGenero AS FG 
		INNER JOIN
			GENEROS AS G ON G.ID = FG.IDGENERO
		INNER JOIN
			FILMES  AS F ON F.ID = FG.IDFILME
		WHERE
			G.GENERO = 'MISTÉRIO';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

		SELECT
			F.NOME,A.PrimeiroNome,A.UltimoNome,EF.Papel 
		from 
			ElencoFilme as EF
		INNER JOIN
			ATORES AS A
		ON
			A.ID = EF.IdAtor
		INNER JOIN
			FILMES AS F
		ON
		    F.ID = EF.IdFilme;


			