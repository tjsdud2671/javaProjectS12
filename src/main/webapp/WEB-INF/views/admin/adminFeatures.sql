show tables;
create table adminFeatures(
	idx int auto_increment primary key,
	title varchar(100) not null,
	wdate datetime default now(),
	content text null,
	fname varchar(500)
);

