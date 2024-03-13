-- 1. Qual é o ID do autor do livro com o título 'It'?
SELECT authors.idAuthor
FROM authors
JOIN books ON authors.idAuthor = books.idAuthor
WHERE books.title = 'It';
