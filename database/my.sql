/*exercicio 1 -- Escreva uma consulta que some o total de produtos disponíveis em estoque -- SUM SOMA. */
select SUM(quantidade_estoque) total_produtos from produtos;

/*exercicio 2 -- Escreva uma consulta que calcule a média dos preços dos produtos 
-- AVG MEDIA. */
select avg(preco) media_preco from produtos;

/*exercicio 3 -- Escreva uma consulta para encontrar todos os produtos que têm "Modelo 20" em seu nome,
 selecionando todas as informações desses produtos --like usa quando quer procurar algo parcido.*/
select * from produtos where nome like '%Modelo 20%';

/*exercicio 4 -- Escreva uma consulta para selecionar o nome, preco e descricao dos produtos com preço entre 50 e 150
-- between numero "and" numero2 para selecionar itens entre os numeros.*/
select * from produtos where preco between 50 and 150;

/*exercicio 5 -- Escreva uma consulta para listar o nome e preco dos 5 produtos mais baratos.
-- limit limita em quantos dados vc quer e o order by ordena do jeito q vc quer.*/
select nome, preco from produtos order by preco limit 5 ;

/*exercicio 6 -- Escreva uma consulta para selecionar o nome dos produtos que não têm nenhum item em estoque.
-- .*/
select * from produtos where quantidade_estoque <1;

/*exercicio 7 -- Escreva uma consulta para selecionar o nome e descricao dos produtos que possuem uma descrição (não é nula ou vazia).
-- .*/
select nome, descricao from produtos where not null;

/*exercicio 8 -- Escreva uma consulta para selecionar o nome e preco dos produtos cujo preço está acima da média dos preços de todos os produtos.
-- .*/
select nome, preco from produtos where preco > 168;

/*exercicio 9 -- Escreva uma consulta para selecionar todas as informações dos produtos que têm "SSD" no nome.
-- .*/
select * from produtos where nome like '%SSD%';

/*exercicio 10 -- Escreva uma consulta para listar o nome e preco de todos os produtos, ordenados pelo preço em ordem decrescente.
-- .*/
select nome, preco from produtos order by preco;

/*exercicio 11 -- Escreva uma consulta para selecionar o nome e quantidade_estoque dos produtos cuja quantidade em estoque é um número par.
-- .*/
select * from produtos where quantidade_estoque % 2 = 0;

/*exercicio 12 -- Escreva uma consulta para selecionar o nome e descricao dos produtos que têm preço 
inferior a 100 e uma quantidade em estoque superior a 0.
-- .*/
select nome, descricao from produtos where preco>100 and quantidade_estoque >0;