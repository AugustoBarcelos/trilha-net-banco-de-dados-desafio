-- 1 - Buscar o nome e ano dos filmes
SELECT nome, ano
FROM Filmes;

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT nome, ano
FROM Filmes
ORDER BY ano;

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o

SELECT nome, ano, duracao
FROM Filmes
WHERE nome = 'De Volta para o Futuro';

--4 - Buscar os filmes lan�ados em 1997
SELECT nome, ano, duracao
FROM Filmes
WHERE Ano = 1997;

--5 - Buscar os filmes lan�ados AP�S o ano 2000
SELECT nome, ano, duracao
FROM Filmes
WHERE Ano >2000;

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT nome, ano, duracao
FROM Filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao;

--7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ano, COUNT(*) AS qtd_filmes
FROM Filmes
GROUP BY ano
ORDER BY qtd_filmes DESC;

--8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT Id ,PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M';

--9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

--10 - Buscar o nome do filme e o g�nero
SELECT f.nome, g.genero
FROM Filmes f 
INNER JOIN Generos g
ON f.id = g.Id
ORDER BY f.nome;

--11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"

SELECT f.nome, g.genero
FROM Filmes f 
INNER JOIN Generos g
ON f.id = g.Id
WHERE g.genero = 'Mist�rio';

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT f.nome, a.PrimeiroNome, a.UltimoNome, e.Papel
FROM Filmes f
INNER JOIN ElencoFilme e
ON f.id = e.IdFilme
INNER JOIN Atores a
ON e.IdAtor = a.id
ORDER BY f.nome;


