create table goods(
id int unsigned auto_increment,
ownid varchar(8),
gname varchar(50), /*��Ʒ����*/
gpicture varchar(50),/*��ƷͼƬ*/
gprice varchar(50) not null,/*��Ʒ�۸�*/
gsold int,/*����*/
glike int,/*������*/
ginfor varchar(100),/*��Ʒ��ϸ��Ϣ*/
gnum int,/*����*/
PRIMARY KEY(ownid,gname),
FOREIGN KEY(ownid) REFERENCES shop_owners(ownid)
)