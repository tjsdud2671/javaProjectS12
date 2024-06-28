show tables;
create table inquiry(
	idx int auto_increment primary key,
	name varchar(50) not null,
	email varchar(200) not null,
	onum int not null,
	part varchar(50) not null,
	content text null
);