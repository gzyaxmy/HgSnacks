create table carts( /*���ﳵ*/
userid varchar(8), /*�û�id*/
ownid varchar(8),  /*�̼�id*/
gname varchar(50), /*��Ʒ����*/
buynum int,      /*��������*/
paystate int,    /*֧��״̬*/
confirmstate int,/*�ӵ�״̬*/
comment varchar(100),/*����*/
buytime varchar(50),
PRIMARY KEY(userid,ownid,gname), /*�ؼ���*/
FOREIGN KEY(userid) REFERENCES users(userid), /*����*/
FOREIGN KEY(ownid,gname) REFERENCES goods(ownid,gname)/*����*/
)