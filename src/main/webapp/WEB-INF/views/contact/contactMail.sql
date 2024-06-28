show tables;
create table contactMail(
	idx int auto_increment primary key,
	email varchar(100) not null,
	admin varchar(100) not null,
	content text not null
);