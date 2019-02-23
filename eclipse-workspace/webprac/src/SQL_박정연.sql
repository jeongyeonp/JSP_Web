create table student(
	isbn int,
	sname varchar(20),
	dept varchar(10),
	phone varchar(20),
	email varchar(20)
);

insert into STUDENT values(201701,'김길동','컴공','010-1111-1111','aaa@korea.com');
insert into STUDENT values(201702,'이길동','경영','010-1111-1112','bbb@korea.com');
insert into STUDENT values(201703,'박길동','간호','010-1111-1113','ccc@korea.com');
insert into STUDENT values(201704,'홍길동','컴공','010-1111-1114','ddd@korea.com');
insert into STUDENT values(201705,'조길동','전자','010-1111-1115','eee@korea.com');
insert into STUDENT values(201706,'백길동','경영','010-1111-1116','fff@korea.com');

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



insert into ggrade values(201701,'컴공개론','20171220',90,'A0','R');
insert into ggrade values(201703,'JAVA','20171220',95,'A+','R');
insert into ggrade values(201705,'웹프로그래밍','20170625',85,'B+','O');
insert into ggrade values(201701,'JAVA','20170625',96,'A+','R');
insert into ggrade values(201701,'웹프로그래밍','20151220',87,'B+','O');
insert into ggrade values(201703,'간호학개론','20170625',84,'B0','R');
insert into ggrade values(201705,'웹푸로그래밍','20170625',85,'B+','O');



select s.isbn as 학번, s.sname as 성명, g.gname as 과목명, g.score as 점수, g.grade as 성적, to_char(g.gdate,'yyyy/mm/dd') as 산정일
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


select s.sname as 이름, sum(g.score) as 총점, avg(g.score) as 평균
from student s, ggrade g
where s.isbn = g.isbn
group by sname;


