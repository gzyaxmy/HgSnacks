/*创建用户表*/
create table users
( userid varchar(8) PRIMARY KEY,
  username varchar(8) not null,
  userpwd varchar(45) not null,
  usersex varchar(50),
  userphone varchar(50),
  userdormitory nchar(10),
  usernumber nchar(10),
  u_profile varchar(45)
)