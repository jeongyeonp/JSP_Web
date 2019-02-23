create table student(
	isbn int,
	sname varchar(20),
	dept varchar(10),
	phone varchar(20),
	email varchar(20)
);

insert into STUDENT values(201701,'��浿','�İ�','010-1111-1111','aaa@korea.com');
insert into STUDENT values(201702,'�̱浿','�濵','010-1111-1112','bbb@korea.com');
insert into STUDENT values(201703,'�ڱ浿','��ȣ','010-1111-1113','ccc@korea.com');
insert into STUDENT values(201704,'ȫ�浿','�İ�','010-1111-1114','ddd@korea.com');
insert into STUDENT values(201705,'���浿','����','010-1111-1115','eee@korea.com');
insert into STUDENT values(201706,'��浿','�濵','010-1111-1116','fff@korea.com');

select * from STUDENT;

select * from ggrade;


create table ggrade(
	isbn int,
	gname varchar(20),
	gdate date,
	score int,
	grade varchar(10),
	ro varchar(20)
);



insert into ggrade values(201701,'�İ�����','20171220',90,'A0','R');
insert into ggrade values(201703,'JAVA','20171220',95,'A+','R');
insert into ggrade values(201705,'�����α׷���','20170625',85,'B+','O');
insert into ggrade values(201701,'JAVA','20170625',96,'A+','R');
insert into ggrade values(201701,'�����α׷���','20151220',87,'B+','O');
insert into ggrade values(201703,'��ȣ�а���','20170625',84,'B0','R');
insert into ggrade values(201705,'��Ǫ�α׷���','20170625',85,'B+','O');



select s.isbn as �й�, s.sname as ����, g.gname as �����, g.score as ����, g.grade as ����, to_char(g.gdate,'yyyy/mm/dd') as ������
from student s, ggrade g
where s.isbn = g.isbn;

create table tstudent(
	isbn int,
	sname varchar(20),
	dept varchar(10),
	phone varchar(20),
	email varchar(20)
);
select * from tstudent;


select s.sname as �̸�, sum(g.score) as ����, avg(g.score) as ���
from student s, ggrade g
where s.isbn = g.isbn
group by sname;


