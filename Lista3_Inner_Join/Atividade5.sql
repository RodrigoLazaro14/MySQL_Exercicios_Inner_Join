#drop database `db_construindo_a_nossa_vida`;
create database `db_construindo_a_nossa_vida`;
use `db_construindo_a_nossa_vida`;


create table `tb_categoria` (
	`id_categoria` int primary key AUTO_INCREMENT,
	`tipo_categoria` enum('hidraulica', 'eletrica', 'marcenaria', 'civil', 'outro'),
	`variedade_ferramentas` int	 
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

insert into `tb_categoria` (`tipo_categoria`, `variedade_ferramentas`) values
('hidraulica', '5'),
('eletrica', '10'),
('marcenaria', '4'),
('civil', '10'),
('outro', '10');

insert into `tb_produto` (`tipo_produto`, `preco_produto`, `quantidade_produto`, `estoque_produto`, `fk_id_categoria`) values
('Cano', '20', '1', '100', '1'),
('Registro', '25', '1', '50', '1'),
('Multimetro', '60', '4', '33', '2'),
('Cabo anti chamas', '70', '2', '99', '2'),
('Madeira', '55', '130', '200', '3'),
('Serrote', '3.99', '3', '100', '3'),
('Cimento', '30', '35', '300', '4'),
('Tinta', '79.99', '10', '99', '5');

select * from tb_produto;
select * from tb_produto where preco_produto>50;
select * from tb_produto where preco_produto between 3 and 60;
select * from tb_produto where tipo_produto like 'c%';
select * from tb_produto inner join tb_categoria on fk_id_categoria = id_categoria;
select * from tb_produto inner join tb_categoria on fk_id_categoria = id_categoria and id_categoria=1;