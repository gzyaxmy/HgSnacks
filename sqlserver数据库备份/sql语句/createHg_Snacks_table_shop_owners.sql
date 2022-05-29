/*创建商家语句*/
create table shop_owners
( ownid varchar(8) PRIMARY KEY,
  ownname varchar(8),
  ownpwd varchar(45) not null,
  ownsex varchar(50),
  ownphone varchar(50),
  owndormitory varchar(50),
  ownnumber varchar(50),
  o_profile varchar(45)
)