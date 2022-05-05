#设置客户端连接服务器端的便把为utf8
set names utf8;
#丢弃数据库，如果存在

#创建新的数据库,设置存储字符的编码为utf8
#create database veer charset=utf8;
#进入到数据库
use veer;
/*
#创建用户表
create table veer_user(
编号 int primary key,
昵称 varchar(32), 
密码 varchar(32),
手机号 varchar(16),
姓名 varchar(32),
性别 int
);

insert into veer_user values(1,'卢某人','123abc',18890018527,'卢凌云',1);
*/


/*
#创建图片表
create table veer_tupian(
id int,
类别编号 int,
图片尺寸 varchar(32),
图片大小 varchar(32),
图片标题 varchar(32)
);

insert into veer_tupian values(1,66,'1920✖1080','3.56mb','雪雪大美女');
*/


#丢弃数据表如果存在
drop table if exists veer_tupian_leibie;
#创建类别表
create table veer_tupian_leibie(
	lid int primary key,
	类别名称 varchar(32)
);

#丢弃数据表如果存在
drop table if exists veer_tupian;

create table veer_tupian(
	tid int primary key,
	类别id int,
	图片路径 varchar(128),
	foreign key(leibieid) references veer_tupian_leibie(lid)
);





