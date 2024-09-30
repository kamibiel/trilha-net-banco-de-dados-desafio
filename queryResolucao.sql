-- 1 - Buscar o nome e ano dos filmes

SELECT 
	nome, 
	ano 
FROM 
	filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT 
	nome, 
	ano 
FROM 
	filmes
ORDER BY ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT
	nome, 
	ano,
	duracao
FROM
	filmes
WHERE 
	nome = 'De Volta para o Futuro';
	
-- 4 - Buscar os filmes lançados em 1997

SELECT
	nome,
	ano,
	duracao
FROM
	filmes
WHERE
	ano = '1997';

-- 5 - Buscar os filmes lançados APÓS o ano 2000

SELECT
	nome,
	ano,
	duracao
FROM
	filmes
WHERE
	ano > '2000';

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT
	nome,
	ano,
	duracao
FROM
	filmes
WHERE
	duracao > 100 AND Duracao < 150
ORDER BY duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT
	ano,
	COUNT(ano) AS quantidade
FROM
	filmes
GROUP BY
	ano
ORDER BY
	quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT
	*
FROM
	atores
WHERE
	genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM
	atores
WHERE
	genero = 'F'
ORDER BY
	PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero

SELECT
	f.nome AS filmeNome,
	g.genero as generoNome
FROM
	filmes f
INNER JOIN 
	FilmesGenero fg ON	f.id = fg.IdFilme
INNER JOIN
	generos g ON fg.IdGenero = g.Id;	

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT
	f.nome AS filmeNome,
	g.genero as generoNome
FROM
	filmes f
INNER JOIN 
	FilmesGenero fg ON	f.id = fg.IdFilme
INNER JOIN
	generos g ON fg.IdGenero = g.Id
WHERE
	g.genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT
	f.nome AS filmeNome,
	a.PrimeiroNome as PrimeiroNome,
	a.UltimoNome as UltimoNome,
	ef.Papel as Papel
FROM
	filmes f
INNER JOIN 
	ElencoFilme ef ON f.id = ef.IdFilme
INNER JOIN
	Atores a ON ef.IdAtor = a.Id;