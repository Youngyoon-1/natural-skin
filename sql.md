create table member(
    member_id varchar2(20 char) primary key,
    member_pw varchar2(20 char),
    member_name varchar2(10 char),
    member_phone varchar2(25 char),
    member_gender varchar2(10 char),
    member_email varchar2(40 char),
    member_birthday number,
    member_role number(1)
);

insert into member(member_id, member_pw, member_name, member_role) VALUES('admin', '1234', '관리자', 1);

insert into member(member_id, member_pw, member_name, member_role) VALUES('son', '1234', '손흥민', 0);

create table notice_board(
    notice_board_id number(3) primary key,
    member_id VARCHAR2(20 CHAR),
    notice_board_title varchar2(50 char),
    notice_board_content varchar2(500 char),
    notice_board_date date,
    notice_board_hit number(4),
    constraint fk_notice_board foreign key(member_id)
    references member(member_id) ON DELETE CASCADE 
);
create sequence notice_board_seq;

create table product(
    product_id number(2) primary key,
    product_name varchar2(30 char),
    product_price number,
    product_main_img_path varchar2(50 char),
    product_content_img_path varchar2(50 char),
    product_stock number(3),
    product_category varchar2(15 char),
    product_content varchar2(500 char)
);
create sequence product_seq;

create table review_board(
    review_board_id number(2) primary key,
    member_id varchar2(20 char), 
    product_id number(2),
    review_board_title varchar2(50 char),
    review_board_content varchar2(500 char),
    review_board_date date,
    review_board_score number,
    review_board_hit number,
    review_board_img_path varchar2(50 char),
    constraint fk_member_id foreign key(member_id) 
    references member(member_id) ON DELETE CASCADE,
    constraint fk_product_id foreign key(product_id) 
    references product(product_id) ON DELETE CASCADE
);
create sequence review_board_seq;

create table review_reply(
    review_reply_id number primary key,
    review_board_id number,
    product_id number,
    member_id varchar2(20 char),
    review_reply_content varchar2(200 char),
    review_reply_date date,
    review_reply_group_no number,
    review_reply_depth number,
    review_reply_group_order number,
    constraint fk_review_board_id foreign key(review_board_id)
    references review_board(review_board_id)ON DELETE CASCADE,
    constraint fk_reveiw_reply_product_id foreign key(product_id)
    references product(product_id)ON DELETE CASCADE
);
create sequence review_reply_seq;

create table qna_board(
    qna_board_id number primary key,
    member_id varchar2(20 char),
    product_id number,
    qna_board_title varchar2(50 char),
    qna_board_date date,
    qna_board_content varchar2(500 char),
    qna_board_group_no number,
    qna_board_lock number(1),
    qna_board_reply_state number(1),
    qna_board_hit number,
    constraint fk_qna_member_id foreign key(member_id)
    references member(member_id),
    constraint fk_qna_product_id foreign key(product_id)
    references product(product_id)
);
create sequence qna_board_seq;

create table basket(
    basket_id number primary key,
    member_id varchar2(20 char),
    product_id number,
    basket_amount number,
    constraint fk_basket_member_id foreign key(member_id)
    references member(member_id),
    constraint fk_basket_product_id foreign key(product_id)
    references product(product_id)
);
create sequence basket_seq;

create table member_order(
    member_order_id number primary key,
    member_id varchar2(20 char),
    member_order_state varchar2(10 char),
    member_order_date date,
    member_order_price number,
    member_order_payment_method varchar2(15 char),
    member_order_receive_address varchar2(100 char),
    member_order_receive_name varchar2(10 char),
    member_order_receive_phone varchar2(30 char),
    constraint fk_order_member_id foreign key(member_id)
    references member(member_id)ON DELETE CASCADE
);
create sequence member_order_seq;

create table order_detail(
    order_detail_id number primary key,
    member_order_id number,
    member_id varchar2(20 char),
    product_id number,
    order_detail_amount number,
    order_detail_price number,
    order_detail_review number(1),
    constraint fk_order_id foreign key(member_order_id)
    references member_order(member_order_id)on delete cascade,
    constraint fk_detail_member_id foreign key(member_id)
    references member(member_id)on delete cascade,
    constraint fk_detail_product_id foreign key(product_id)
    references product(product_id)on delete cascade
);
create sequence order_detail_seq;
