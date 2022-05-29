create table carts( /*购物车*/
userid varchar(8), /*用户id*/
ownid varchar(8),  /*商家id*/
gname varchar(50), /*商品名称*/
buynum int,      /*购买数量*/
paystate int,    /*支付状态*/
confirmstate int,/*接单状态*/
comment varchar(100),/*评论*/
buytime varchar(50),
PRIMARY KEY(userid,ownid,gname), /*关键字*/
FOREIGN KEY(userid) REFERENCES users(userid), /*引用*/
FOREIGN KEY(ownid,gname) REFERENCES goods(ownid,gname)/*引用*/
)