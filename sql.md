create table member(
    member_id varchar2(20 char) primary key,
    member_pw varchar2(20 char) null,
    member_name varchar2(10 char) null,
    member_phone varchar2(20 char) null,
    member_gender varchar2(5 char) null,
    member_email varchar2(30 char) null,
    member_birthday number null,
    member_role number(1) not null,
);

insert into member(member_id, member_pw, member_name, member_role) VALUES('admin', '1234', '관리자', 1);

insert into member(member_id, member_pw, member_name, member_role) VALUES('son', '1234', '손흥민', 0);

create table notice_board(
    notice_board_id number(3) primary key,
    member_id VARCHAR2(20 CHAR) not null,
    notice_board_title varchar2(35 char) not null,
    notice_board_content varchar2(255 char) not null,
    notice_board_date date not null,
    notice_board_hit number(4) null,
    constraint fk_notice_board foreign key(member_id)
    references member(member_id) ON DELETE CASCADE 
);

create table product(
    product_id number(2) primary key,
    product_name varchar2(25 char) null,
    product_price number null,
    product_main_img_path varchar2(40 char) null,
    product_content_img_path varchar2(40 char) null,
    product_stock number(3) null,
    product_category varchar2(15 char) null,
    product_content varchar2(500 char) null
);

