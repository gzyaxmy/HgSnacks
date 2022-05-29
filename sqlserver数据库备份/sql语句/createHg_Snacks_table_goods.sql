create table goods(
id int unsigned auto_increment,
ownid varchar(8),
gname varchar(50), /*商品名称*/
gpicture varchar(50),/*商品图片*/
gprice varchar(50) not null,/*商品价格*/
gsold int,/*月售*/
glike int,/*点赞量*/
ginfor varchar(100),/*商品详细信息*/
gnum int,/*评论*/
PRIMARY KEY(ownid,gname),
FOREIGN KEY(ownid) REFERENCES shop_owners(ownid)
)