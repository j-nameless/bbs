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

insert into writer values (null,'帅气的楼主','admin','password');
insert into writer values (null,'不明所以的吃瓜群众','12345','12345');
insert into article values (null, 0, 1, '欢迎', '欢迎来到java交流学习论坛', now(), 1,1);
insert into article values (null, 1, 1, '楼主威武', '楼主帅气',now(), 1 ,2);
insert into article values (null, 1, 1, '楼主威武', '楼主帅气', now(), 0 ,2);
insert into article values (null, 1, 1, '楼主威武', '楼主帅气', now(), 1 ,2);