CREATE DATABASE catalogoFilmesDB;
USE catalogoFilmesDB;

CREATE TABLE tb_usuario(
	id_usuario    int primary key auto_increment,
    nm_usuario	  varchar(200),
    ds_email      varchar(200),
    ds_senha      varchar(20)
);

CREATE TABLE tb_filmes(
	id_filme      int primary key auto_increment,
    id_usuario    int,
    nm_filme      varchar(200),
    ds_sinopse    varchar(4000),
    vl_avaliacao  decimal(15,2),
    dt_lancamento Date,
    bt_disponivel boolean,
	img_filme     varchar(800),
    foreign key(id_usuario) references tb_usuario (id_usuario)
);