USE catalogoFilmesDB;

-- carga inicial usuario admin
insert into tb_usuario(nm_usuario, ds_email, ds_senha)
				values('admin', 'admin@admin.com.br', '1234');	
                
-- csu01: efetuar login
select 	id_usuario     id,
		nm_usuario     nome,
        ds_email       email
from tb_usuario
where ds_email     = 'admin@admin.com.br'
	and ds_senha   = '1234';
    
-- CSU02: cdastrar novo filme 
insert into tb_filmes(id_usuario, nm_filme, ds_sinopse, vl_avaliacao, dt_lancamento, bt_disponivel, img_filme)  
			   values(1, 'Harr-Potter', 'Filme bem tops', 8.2, '2012-02-11', true, '/storage/filme/dfasfsdf.jpg');
			
-- CSU03: alterar filme 
update tb_filmes
	set nm_filme    = 'Harr-Potter e a Pedra filosofal',
		ds_sinopse  = 'Filme bem tops',
        vl_avaliacao = 9.2,
        dt_lançamento = '2010-05-03',
        bt_disponivel  = true,
        img_filme      = '/storage/filme/dfasfsdf.jpg'
where id_filme = 1;

-- CSU04: remover filme 
delete from tb_filme
	where id_filme = 1;
    
-- CSU05: consltar todos os filmes
select 	id_filme      id,
		nm_filme      nome,
        vl_avalicao   avaliacao,
        dt_lancamento lancamento,
        bt_disponivel disponivel
from tb_filmes;

-- CSU06: consultar filmes por nome 
select 	id_filme      id,
		nm_filme      nome,
        vl_avalicao   avaliacao,
        dt_lancamento lancamento,
        bt_disponivel disponivel
from tb_filmes
	where nm_filme       like '%a%';
    
-- CSU07: consultar filme por id
select 	id_filme      id,
		nm_filme      nome,
        vl_avalicao   avaliacao,
        ds_sinopse    sinopse,
        dt_lancamento lancamento,
        bt_disponivel disponivel,
        img_filme     capa
from tb_filmes
	where id_filme = 1;

 
        