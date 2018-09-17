use biblioteca
/*
select * from editora

insert into autor(idautor,nome,sobrenome)
values(2,'marcela','rodrigues')
insert into autor(idautor,nome,sobrenome)
values(3,'rodrigo','marques')
insert into autor(idautor,nome,sobrenome)
values(4,'Adriana','Oliveira')
insert into autor(idautor,nome,sobrenome)
values(5,'Fernando','Ferreira')

insert into editora(nome)
values('aaaaa')
insert into editora(nome)
values('bbbbb')
insert into editora(nome)
values('ccccc')
insert into editora(nome)
values('ddddd')

select * from livro
insert into livro(nome,isbn,datapulicacao,preco,idautor1,ideditor1)
values('floresta',1111,100217,33,2,2)
insert into livro(nome,isbn,datapulicacao,preco,idautor1,ideditor1)
values('rio',2222,250599,35.00,4,1)
insert into livro(nome,isbn,datapulicacao,preco,idautor1,ideditor1)
values('flor',3333,120600,23.88,3,2)
insert into livro(nome,isbn,datapulicacao,preco,idautor1,ideditor1)
values('animais',4444,160703,22,3,2)

------------------------------------------------------------------------------------------
Select idlivro,nome from livro
Order by idlivro desc

Select distinct nome,sobrenome
From autor

select * from livro
delete from autor where idautor=111
Select nome,preco from livro where nome='rio'

select * from livro
where preco < 30

select idlivro,nome,preco from livro
where idlivro > 0 and preco < 23 or  preco >33

insert into autor(idautor,nome,sobrenome)
values(25,'Éllen', 'Padilha')

update livro set isbn= 5555, preco= 111.50
where idlivro=115


select * from autor

Select top 50 percent  nome
From autor

select datapulicacao 
as dtpublicacao
from livro

select * from livro

alter table livro
sp_rename [livro.datapulicacao], [dtpublicacao] 
select * from livro

select nome from  livro union all
select sobrenome from autor

select nome,preco
into nvtblivro
from livro
where preco > 23

select * from nvtblivro
select * from livro
drop table nvtblivro


select count(nome) from livro

select max(preco) from livro

select  min (idlivro) from livro

Select avg(preco) from livro

select sum (preco) from livro

select preco,nome  from livro
where preco between 19 and 30

select nome from autor
where nome like 'f%o'
where nome like '_d%'
where nome like '%[o]'
where nome not like 'e%'

select livro.nomelivro, livro.preco,autor.nome as autor, editora.nome as editora from livro
inner join autor
on livro.idautor1 = autor.idautor
inner join editora
on livro.ideditor1 = editora.ideditora 
 
--alter table livro
--sp_rename [livro.nome], [nomelivro] 
--select * from livro


select * from livro
select * from autor
select * from editora


insert into autor (nome,sobrenome,idautor)
values( 'roberta','Silva', 9)


--select nomelivro, idautor1, autor.nome from livro
--full join autor
--on livro.idautor1 = autor.idautor
--where livro.idautor1 is null
--or autor.idautor is null 
--------------------------------------------------------------------------------------------------------------
select * from livro
inner join autor
on livro.idautor1 = autor.idautor

select * from livro
left join autor
on livro.idautor1 = autor.idautor

 select * from livro
left join autor
on livro.idautor1 = autor.idautor
where autor.idautor is null


select * from autor
right join livro
on livro.idautor1 = autor.idautor
where autor.idautor is null

select nomelivro,idautor1, autor.nome from livro
full join autor
on livro.idautor1 = autor.idautor
where livro.idautor1 is null
or autor.idautor is null 

Select * from autor 
Where idautor not in (1,2)

Select * from autor 
Where idautor  in (1,2)


--create table produto 
--(id smallint, nome varchar(20), preco money, 
--quant smallint, total as (preco * quant) )

--insert into produto values(1,'mouse',15.00,2) 
--insert into produto values(2,'teclado',39.99,3) 
--insert into produto values(3,'fone',88.25,4) 
--insert into produto values(4,'pendrive',20,2) 
--insert into produto values(5,'dvd-r',10.15,8) 

--select * from produto
--select sum(total) as somaTotal from produto 

create index indicenomelivro
on livro(nomelivro)
select * from livro

select * from livro
create rule rgpreco as @valor > 10.00 
execute sp_bindrule rgpreco, 'livro.preco'

insert into livro values ('familia', 9090,090800, 04.30,3,2)

update livro set preco=50
where idlivro=115

select'eu gosto do livro ' + nomelivro as 'meus livros' from livro

--select * from fn_helpcollations()

select SERVERPROPERTY('collation') as colaçãousada

update livro set preco=50
where preco < 18

select * from livro
select top(5) with ties nomelivro, preco from livro
order by preco desc



use biblioteca

*/

--create view vw
--as select nomelivro, autor.nome from livro
--inner join autor
--on livro.idautor1 =autor.idautor 

--select nome,nomelivro  from vw
--where nomelivro like '%e'

select * from produto


declare @valor int, @texto varchar(40), @data_nasc date, @nada money
