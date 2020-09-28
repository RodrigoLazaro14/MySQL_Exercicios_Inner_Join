#drop database `db_cursoDaMinhaVida`;
create database `db_cursoDaMinhaVida`;
use `db_cursoDaMinhaVida`;


create table `tb_categoria` (
	`id_categoria` int primary key AUTO_INCREMENT,
	`tipo_categoria` enum('Programacao', 'Vestibular', 'Desenho', 'Ligua estrangeira', 'Robotica'),
	`duracao` enum('Dias', 'Meses', 'Anos')	 
);

create table `tb_curso` (
	`id_curso` int primary key auto_increment,
	`tipo_curso` varchar(20),
	`preco_curso` double,
	`quantidade_alunos` int,
	`nivel_curso` varchar(20),
	`fk_id_categoria` int,
	
	constraint fk_categoria foreign key (fk_id_categoria) references tb_categoria (id_categoria)
);

insert into `tb_categoria` (`tipo_categoria`, `duracao`) values
('Programacao', 'Meses'),
('Vestibular', 'Meses'),
('Desenho', 'Dias'),
('Ligua estrangeira', 'Anos'),
('Robotica', 'Anos');

insert into `tb_curso` (`tipo_curso`, `preco_curso`, `quantidade_alunos`, `nivel_curso`, `fk_id_categoria`) values
('JAVA', '20', '50', 'Basico', '1'),
('C', '25', '50', 'Intermediario', '1'),
('Matematica', '60', '20', 'Avancado', '2'),
('Portugues', '70', '20', 'Avancado', '2'),
('Anime', '55', '130', 'Basico', '3'),
('Paisagem', '3.99', '140', 'Basico', '3'),
('Ingles', '200', '35', 'Avancado', '4'),
('Eletronica', '79.99', '20', 'Avancado', '5');

select * from tb_curso;
select * from tb_curso where preco_curso>50;
select * from tb_curso where preco_curso between 3 and 60;
select * from tb_curso where tipo_curso like 'j%';
select * from tb_curso inner join tb_categoria on fk_id_categoria = id_categoria;
select * from tb_curso inner join tb_categoria on fk_id_categoria = id_categoria and id_categoria=2;