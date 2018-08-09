select * from member;
select * from VS_BOARD;
select * from fr_board;
delete from member;
select * from tab;
select * from le_main;

drop table member;
drop table bd_list;
drop table message;
drop table mate_board;
drop table mate_cmt;
drop table fr_board;
drop table fr_cmt;
drop table vs_board;
drop table vs_cmt;
drop table ma_board;
drop table ma_cmt;
drop table ma_join;
drop table le_main;
drop table point;

create table member(
me_id varchar2(30),
me_pwd varchar2(30),
me_name varchar2(30),
me_birth date,
me_gender varchar2(10),
me_phone varchar2(15),
me_telnum varchar2(15),
me_telchk varchar2(5),
me_email varchar2(30),
me_addr varchar2(50),
me_point number,
me_points number,
me_grade varchar2(20),
me_character varchar2(200),
me_state varchar2(10),
me_img varchar2(200),
me_loc varchar2(200),
me_black number);

create table bd_list(
me_id varchar2(30),
bd_id varchar2(30));

create table message(
msg_no number,
sender varchar2(30),
receiver varchar2(30),
msg_title varchar2(100),
msg_txt varchar2(1000),
msg_date date);

create table mate_board(	
mt_no number,
mt_title varchar2(100),
mt_txt varchar2(1000),
mt_date date,
mt_hits number,
mt_file varchar2(200),
mt_map varchar2(200),
mt_ctg varchar2(30),
mt_cnt number,
me_id varchar2(30),
mt_img varchar2(200),
mt_participant varchar2(200));

create table mate_cmt(	
mt_cmt_no number,
mt_cmt_txt varchar2(500),
mt_cmt_date date,
mt_no number,
me_id varchar2(30));


create table fr_board(
fr_no number,
fr_title varchar2(100),
fr_txt varchar2(3000),
fr_ctg varchar2(30)	,
fr_date date,
fr_hits number,	
fr_img varchar2(200),	
me_id varchar2(30));


create table fr_cmt(
fr_cmt_no number,
fr_cmt_txt varchar2(1000),
fr_cmt_date date,
fr_no number,
me_id varchar2(30));


create table vs_board(
vs_no number,
vs_title varchar2(100),
vs_optionA varchar2(100),
vs_optionB varchar2(100),
vs_txt varchar2(3000),
me_id varchar2(30),
vs_hitsA number,
vs_hitsB number,
vs_date date);


create table vs_cmt(
vs_cmt_no number,
vs_cmt_txt varchar2(500),
vs_cmt_date date,
vs_no number,
me_id varchar2(30));


create table ma_board(
ma_no number,
ma_title varchar2(100),
ma_txt varchar2(1000),
ma_point number,
ma_date date,
ma_enddate date);


create table ma_cmt(
ma_cmt_no number,
ma_cmt_txt varchar2(500),
ma_cmt_date date,
ma_no number,
me_id varchar2(30));


create table ma_join(	
ma_no number,
me_id number);


create table le_main(
 le_title varchar2(50),
 le_start date,
 le_end date,
 le_addr1 varchar2(200),
 le_addr2 varchar2(200),
 le_cid varchar2(10),
 le_img varchar2(50));
 
insert into le_main
values ('�λ�Ҳ�����','20181027','20181027','�λ걤���� ������ �����غ��� ','���ȸ��ؼ�����','235076','fireworksfestival.JPG');
insert into le_main
values ('����㵵����߽���2018', '20180330', '20181028','����Ư���� �������� ���ǵ��� 330(���ǵ���)','���ǵ��Ѱ�����, �����Ѱ�����, DDP, û��õ','2028440','marketevent.jpg');
insert into le_main
values ('��簡��������2018','20180922','20181009','��⵵�����ϻ굿��ȣ���� 595(���׵�)','���� �ϻ� ȣ������','1725993','flowerfestival.JPG');

create table point(
   po_no number, 
   po_title varchar2(100),      
   po_txt varchar2(500),
   po_img varchar2(200),
   po_pt number,      
   po_date date,         
   po_state number);


// �⺻Ű ����

alter table member
add constraint pk_me_id primary key(me_id);

alter table message
add constraint pk_msg_no primary key(msg_no);

alter table mate_board
add constraint pk_mt_no primary key(mt_no);

alter table mate_cmt
add constraint pk_mt_cmt_no primary key(mt_cmt_no);

alter table fr_board
add constraint pk_fr_no primary key(fr_no);

alter table fr_cmt
add constraint pk_fr_cmt_no primary key(fr_cmt_no);

alter table ch_board
add constraint pk_ch_no primary key(ch_no);

alter table ch_cmt
add constraint pk_ch_cmt_no primary key(ch_cmt_no);

alter table ma_board
add constraint pk_ma_no primary key(ma_no);

alter table ma_cmt
add constraint pk_ma_cmt_no primary key(ma_cmt_no);

alter table ma_join
add constraint pk_ma_cmt_no primary key(ma_cmt_no);

alter table le_board
add constraint pk_le_no primary key(le_no);


// �ܷ�Ű ����

alter table bd_list
add constraint fk_bd_list_me_id foreign key(me_id) references member(me_id);

alter table bd_list
add constraint fk_bd_list_bd_id foreign key(bd_id) references member(me_id);

alter table bd_list
add constraint pk_bd_list_bd primary key(me_id, bd_id);

alter table message
add constraint fk_sender foreign key(sender) references member(me_id);

alter table message
add constraint fk_receiver foreign key(receiver) references member(me_id);

alter table mate_board
add constraint fk_mate_board_me_id foreign key(me_id) references member(me_id);

alter table mate_cmt
add constraint fk_mate_cmt_me_id foreign key(me_id) references member(me_id);

alter table mate_cmt
add constraint fk_mate_cmt_mt_no foreign key(mt_no) references mate_board(mt_no);

alter table fr_board
add constraint fk_fr_board_me_id foreign key(me_id) references member(me_id);

alter table fr_cmt
add constraint fk_fr_cmt_me_id foreign key(me_id) references member(me_id);

alter table fr_cmt
add constraint fk_fr_cmt_fr_no foreign key(fr_no) references fr_board(fr_no);

alter table ch_board
add constraint fk_ch_board_me_id foreign key(me_id) references member(me_id);

alter table ch_cmt
add constraint fk_ch_cmt_me_id foreign key(me_id) references member(me_id);

alter table ch_cmt
add constraint fk_ch_cmt_ch_no foreign key(ch_no) references ch_board(ch_no);

alter table ma_cmt
add constraint fk_ma_cmt_me_id foreign key(me_id) references member(me_id);

alter table ma_cmt
add constraint fk_ma_cmt_ma_no foreign key(ma_no) references ma_board(ma_no);

alter table ma_join
add constraint fk_ma_join_me_id foreign key(me_id) references member(me_id);

alter table ma_join
add constraint fk_ma_join_ma_no foreign key(ma_no) references ma_board(ma_no);



// ������ ����
drop sequence fr_seq;
drop sequence fr_cmt_seq;
drop sequence vs_seq;
drop sequence mate_seq;
drop sequence point_seq;
// ������ �߰�

create sequence fr_seq;
create sequence fr_cmt_seq;
create sequence vs_seq;
create sequence mate_seq;
create sequence point_seq;

