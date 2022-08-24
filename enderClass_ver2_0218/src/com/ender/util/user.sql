--사용자 db
create table member (
	userName char(5) not null,
    userID varchar(30) not null,
    userPW varchar(20) not null,
    userBirth varchar(20) not null,
    userPhone varchar(20) not null,
    userAddress varchar(50) not null,
    userGrade int(1) default 1,
    primary key(userID)
);

--교재 db
create table book(
	b_num int auto_increment primary key,
	b_name varchar(20) not null,
	b_image varchar(30) not null,
	b_pub varchar(10) not null,
	b_price int not null,
	b_info varchar(50) not null
);
	
--강좌 db
create table class(
	c_num int auto_increment primary key,
	c_name varchar(20) not null,
	c_tr varchar(10) not null,
	c_price int not null,
	c_content int not null,
	c_info varchar(50),
	b_num int
);

--장바구니 db
create table cart (
	userID varchar(10),
	c_num int not null,
	b_num int not null
);


--주문 db
create table receipt (
	userID varchar(30),
	c_num int not null,
	b_num int not null
);


drop table receipt
desc receipt
select * from receipt
select * from book
select * from cart
select * from class;
select c.c_name, c.c_tr, c.c_price, b.b_name, b.b_price from class c, book b, cart cart, member member where cart.c_num = c.c_num  and member.userID = cart.userID;
select c.c_name, c.c_tr, c.c_price, b.b_name, b.b_price from class c, book b, cart cart where cart.c_num = c.c_num and cart.b_num=b.b_num;

