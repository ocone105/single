drop table message;

create table message(
msg_no number,
sender varchar2(30),
receiver varchar2(30),
msg_title varchar2(100),
msg_txt varchar2(1000),
msg_date date);

create sequence msg_seq;

select * from message;
