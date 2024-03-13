-- 1. Mostre todos os registros da tabela empréstimo.
select * from loans;

-- 2. Mostre todos os dados do livro com o ISBN '9780451169518'
select * from books;
select *
from books
where isbn = 9780451169518;

-- 3. Quais são os autores nascidos depois de 1965? 
SELECT name
FROM authors
WHERE birthday > 1965;

-- 4. Qual é a biografia do autor com o nome 'George Orwell'?
SELECT biography
FROM authors
WHERE name = 'George Orwell';

-- 5. Quais são os usuários com nível de associação 'premium'?
SELECT name
FROM users
WHERE member_type = 'Premium';

-- 6. Qual é o título do livro com o ID 32?
select * from books;
SELECT title
FROM books
WHERE idBook = 32;

-- 7. Quais são os autores cujo nome começa com 'J'?
SELECT name
FROM authors
WHERE name LIKE 'J%';

-- 8. Qual é o e-mail do usuário com o ID 6?
SELECT email
FROM users
WHERE idUser = 6;

-- 9. Quais são os livros com o título contendo a palavra 'The'?
SELECT title
FROM books
WHERE title LIKE '%The%';

-- 10. Qual é a data de registro do usuário com o nome ‘Maria’?
select * from users;
SELECT registerDate
FROM users
WHERE name = 'Duda Santos';

-- 11. Quais são os Ids dos livros emprestados atualmente?
select * from books_loans;
select idBook 
from books_loans;

-- 12. Qual é o número de identificação do usuário com o e-mail ingrid@example.com'?
select * from users;
select idUser 
from users
where email = 'ingrid@example.com';

-- 13. Quais são os usuários registrados depois de '2023-09-01'?
select * from users;
select name 
from users
where registerDate > '2023-01-01';

-- 14. Quais são os autores que não nasceram no século XX?
select * from authors;
select name 
from authors
where birthday < '1901-01-01' and birthday > '2000-12-31';

-- 15. Listar todos os usuários que se registraram no último trimestre de 2023.
select * from users;
select name 
from users
where registerDate > '2023-10-01' and registerDate < '2023-12-31';

-- 16. Encontrar todos os usuários que não têm um e-mail registrado.
select * from users;
select name 
from users
where email = null;

-- 17. Listar todos os livros que têm mais de 50 caracteres em sua descrição.
select * from books;
select title 
from books
where char_length(description) > 50;