USE biblioteca
/*

Create table autor
(idautor smallint primary key,
nome varchar (50),
sobrenome varchar(60) )

Create table editora
(ideditora smallint primary key identity,
nome varchar(50) not null )

Alter table livro
Drop column idautor

alter table livro
add idautor1 smallint not null
constraint fk_idautor1 foreign key (idautor1) references autor

alter table livro
add ideditor1 smallint not null
constraint fk_ideditora foreign key (ideditor1 ) references editora

insert into autor(idautor, nome, sobrenome)
values(111,'Ellen', 'padilha')


*/



