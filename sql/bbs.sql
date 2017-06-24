create database bbs;

use bbs;

create table article 
(
id int primary key auto_increment,
pid int,
rootid int,
title varchar(255),
cont text,
pdate datetime,
isleaf int,
writer_id int 
);

create table writer 
(
id int primary key auto_increment,
name varchar(20),
username varchar(11),
passwd varchar(25)
);

insert into writer values (null,'˧����¥��','admin','password');
insert into writer values (null,'�������ԵĳԹ�Ⱥ��','12345','12345');
insert into article values (null, 0, 1, '��ӭ', '��ӭ����java����ѧϰ��̳', now(), 1,1);
insert into article values (null, 1, 1, '¥������', '¥��˧��',now(), 1 ,2);
insert into article values (null, 1, 1, '¥������', '¥��˧��', now(), 0 ,2);
insert into article values (null, 1, 1, '¥������', '¥��˧��', now(), 1 ,2);