#drop database `db_cidade_das_carnes`;
create database `db_cidade_das_carnes`;
use `db_cidade_das_carnes`;


create table `tb_categoria` (
	`id_categoria` int primary key AUTO_INCREMENT,
	`tipo_categoria` enum('bovino', 'suino', 'ave', 'embutidos', 'outro'),
	`qtd_sub_tipos_categoria` int	 
);

create table `tb_produto` (
	`id_produto` int primary key auto_increment,
	`tipo_produto` varchar(20),
	`preco_produto` double,
	`quantidade_produto` int,
	`estoque_produto` int,
	`fk_id_categoria` int,
	
	constraint fk_categoria foreign key (fk_id_categoria) references tb_categoria (id_categoria)
);

insert into `tb_categoria` (`tipo_categoria`, `qtd_sub_tipos_categoria`) values
('bovino', '5'),
('suino', '3'),
('ave', '4'),
('embutidos', '10'),
('outro', '10');

insert into `tb_produto` (`tipo_produto`, `preco_produto`, `quantidade_produto`, `estoque_produto`, `fk_id_categoria`) values
('Patinho', '20', '1', '100', '1'),
('Patinho moido', '25', '1', '50', '1'),
('Costela de porco', '60', '4', '33', '2'),
('Bisteca de porco', '70', '2', '99', '2'),
('Asa de frango', '55', '130', '200', '3'),
('Coxa de frango', '10', '3', '100', '3'),
('Salsicha', '3.99', '35', '300', '4'),
('Carvao', '79.99', '10', '99', '5');

select * from tb_produto;
select * from tb_produto where preco_produto>50;
select * from tb_produto where preco_produto between 3 and 60;
select * from tb_produto where tipo_produto like 'c%';
select * from tb_produto inner join tb_categoria on fk_id_categoria = id_categoria;
select * from tb_produto inner join tb_categoria on fk_id_categoria = id_categoria and id_categoria=3;