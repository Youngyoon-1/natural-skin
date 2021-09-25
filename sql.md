create sequence member_seq;
create table member(
	member_idx number default member_seq.nextval,
    member_id varchar2 primary key,
    member_pw varchar2,
    member_name varchar2,
    member_phone varchar2,
    member_gender varchar2 default 'null',
    member_email varchar2,
    member_year number ,
    member_month number default 00,
    member_day number default 00,
    member_role number default 0,
    member_date date default sysdate,
    member_address varchar2,
    member_address_detail varchar2
);

insert into member(member_id, member_pw, member_name, member_role) VALUES('admin', '1234', '관리자', 1);


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
    product_id number primary key,
    product_name varchar2,
    product_price number,
    product_img_path varchar2,
    product_content_img_path varchar2,
    product_stock number,
    product_category varchar2,
    product_content varchar2,
    product_date date default sysdate
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
    references product(product_id)ON DELETE CASCADE,
    constraint fk_reply_member_id foreign key(member_id)
    references member(member_id)ON DELETE CASCADE
);
create sequence review_reply_seq;

create table qna_board(
    qna_board_id number primary key,
    member_id varchar2,
    product_id number,
    qna_board_title varchar2,
    qna_board_date date default sysdate,
    qna_board_content varchar2,
    qna_board_type varchar2,
    qna_board_group_no number,
    qna_board_lock number default 0,
    qna_board_reply_state number,
    qna_board_hit number default 0,
    constraint fk_qna_member_id foreign key(member_id)
    references member(member_id) ON DELETE CASCADE,
    constraint fk_qna_product_id foreign key(product_id)
    references product(product_id)ON DELETE CASCADE
);
create sequence qna_board_seq;

insert into qna_board (qna_board_id, member_id, product_id, qna_board_title, qna_board_content, qna_board_type,qna_board_lock,qna_board_reply_state,qna_board_group_no) values(qna_board_seq.nextval, 'lhurdwellrr',1,'제품문의드립니다.','앰플뚜껑이 잘 안열립니다.','상품',1,1,1)

insert into qna_board (qna_board_id, member_id, product_id, qna_board_title, qna_board_content, qna_board_type,qna_board_lock,qna_board_group_no) values(qna_board_seq.nextval, 'admin',1,'제품문의드립니다.','신속히 확인후에 개별적으로 연락드리겠습니다.','상품',1,1)

insert into qna_board (qna_board_id, member_id, qna_board_title, qna_board_content, qna_board_type, qna_board_reply_state,qna_board_group_no) values(qna_board_seq.nextval, 'nspierrl','배송시작 언제되나요?','이번주 안으로 배송시작 가능한건가요?.','배송',1,3)

insert into qna_board (qna_board_id, member_id, qna_board_title, qna_board_content, qna_board_type,qna_board_group_no) values(qna_board_seq.nextval, 'admin','배송시작 언제되나요?','오래 기다리게 해서 죄송합니다. 주문하신 상품은 오늘 오후 발송예정입니다. 감사합니다.','배송',3)

insert into qna_board (qna_board_id, member_id, product_id, qna_board_title, qna_board_content, qna_board_type,qna_board_lock,qna_board_reply_state,qna_board_group_no) values(qna_board_seq.nextval, 'nspierrl',1,'질문드립니다.','앰플을 아침저녁으로 사용해도 될까요?','상품',1,0,5)

insert into qna_board (qna_board_id, member_id, product_id, qna_board_title, qna_board_content, qna_board_type,qna_board_lock,qna_board_reply_state,qna_board_group_no) values(qna_board_seq.nextval, 'lhurdwellrr',1,'제품문의드립니다.','앰플뚜껑이 잘 안열립니다.','상품',1,0,qna_board_seq.currval);


insert into qna_board (qna_board_id, member_id, qna_board_title, qna_board_content, qna_board_type, qna_board_reply_state,qna_board_group_no) values(qna_board_seq.nextval, 'nspierrl','배송시작 언제되나요?','이번주 안으로 배송시작 가능한건가요?.','배송',0,qna_board_seq.currval);

insert into qna_board (qna_board_id, member_id, product_id, qna_board_title, qna_board_content, qna_board_type,qna_board_lock,qna_board_reply_state,qna_board_group_no) values(qna_board_seq.nextval, 'nspierrl',1,'질문드립니다.','앰플을 아침저녁으로 사용해도 될까요?','상품',1,0,qna_board_seq.currval);

create table basket(
    basket_id number primary key,
    member_id varchar2(20 char),
    product_id number,
    basket_amount number,
    constraint fk_basket_member_id foreign key(member_id)
    references member(member_id) ON DELETE CASCADE,
    constraint fk_basket_product_id foreign key(product_id)
    references product(product_id) ON DELETE CASCADE
);
create sequence basket_seq;

create table member_order(
    member_order_id number primary key,
    member_id varchar2,
    member_name varchar2,
    member_order_state varchar2 default '배송준비중',
    member_order_date date default sysdate,
    member_order_price number,
    member_order_payment_method varchar2,
    member_order_receive_address varchar2,
    member_order_receive_address_detail varchar2,
    member_order_receive_name varchar2,
    member_order_receive_phone varchar2,
    constraint fk_order_member_id foreign key(member_id)
    references member(member_id)ON DELETE CASCADE
);
create sequence member_order_seq;

insert into member_order (member_order_id,  member_id, member_order_receive_name,  member_order_receive_address,   member_order_receive_address_detail, member_order_receive_phone, member_order_price) values(202109211, 'jwedgbrow5j', '안영윤', '서울시 중랑구 상봉동 113-99', '와우멘션 201호', '010-0000-0000', 100000  )

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
