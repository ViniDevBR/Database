create database first_example;
use first_example;
CREATE TABLE person(
	person_id smallint unsigned,
	fname varchar(20),
	lname varchar(20),
	gender enum('M', 'F'),
	birth_date date,
	street varchar(50),
	city varchar(30),
	state varchar(20),
	country varchar(20),
	postal_code varchar(20),
        constraint pk_person primary key (person_id)
);
desc person;
create table favorite_food(
	person_id smallint unsigned,
        food varchar(20),
        constraint pk_favorite_food primary key (person_id, food),
	constraint pk_favorite_food_person_id foreign key (person_id)
        references person(person_id)
);
desc favorite_food;
desc person;
insert into person values	('1', 'Vinicius', 'Celestino', 'M', '2000/04/10', 'Rua jurupema 386',
                                'campinas', 'são paulo', 'brasil', '13054134'),
                                ('2', 'Mariana', 'Andrade', 'F', '2000/05/26', 'Rua Aristoteles 96',
                                'campinas', 'são paulo', 'brasil', '13053193'),
                                ('3', 'Elisandra', 'Aparecida', 'F', '1985/05/05', 'Rua Arimana 856',
                                'campinas', 'são paulo', 'brasil', '13045193'),
                                ('4', 'Victor', 'Oliveira', 'M', '2005/10/15', 'Rua Jati 956',
                                'campinas', 'são paulo', 'brasil', '13053193'),
                                ('5', 'Rogerio', 'Oliveira', 'M', '1980/10/20', 'Rua Ubirata 496',
                                'campinas', 'são paulo', 'brasil', '13014793'),
                                ('6', 'Valderei', 'Ribeiro', 'M', '1990-07-27', 'Rua Juliã 496',
                                'campinas', 'são paulo', 'brasil', '13014793'),
                                ('7', 'Vanessa', 'Ribeiro', 'F', '1990-07-27', 'Rua Juliã 496',
                                'campinas', 'são paulo', 'brasil', '13014793'),
                                ('8', 'Valdereza', 'Ribeiro', 'F', '1990-07-27', 'Rua Juliã 496',
                                'campinas', 'são paulo', 'brasil', '13014793');
select * from person;
delete from person where person_id = 7
                      or person_id = 8;
select * from person;
desc favorite_food;
insert into favorite_food values	(1, 'lasanha'),
                                        (2, 'churrasco'),
                                        (3, 'linguiça'),
                                        (4, 'porco assado'),
                                        (5, 'ovo frito');
select * from favorite_food;
