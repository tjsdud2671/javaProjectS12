show tables;
create table adminProduct(   			/*상품등록 테이블*/
	idx int auto_increment primary key, /*상품 고유번호*/
	name varchar(50) not null,			/*상품명*/
	color varchar(50) not null,			/*색상*/
	price int not null,					/*가격*/
	fname varchar(500) not null,		/*업로드시 파일명*/
	part varchar(20) not null			/*파트분류(TEES/SWEATS/OUTWEAR...)*/
);

drop table adminProduct;