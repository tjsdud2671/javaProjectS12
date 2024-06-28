show tables;
create table stussy(
	idx int auto_increment primary key,
	lastName varchar(10) not null,
	name varchar(30) not null,
	email varchar(50) not null unique,
	password varchar(100) not null,
	level int default 1
);

