create database SPJ;
\c spj;
create table S
(
	Sno char(2) unique,
	Sname char(6),
	Status char(2),
	City char(4),
	primary key(Sno)
);
	
create table P
(
	Pno char(2) unique,
	Pname char(6),
	color char(2),
	weight int,
	primary key(Pno)
);

create table J
(
	Jno char(2) unique,
	Jname char(8),
	CITY char(4),
	primary key(Jno)
);

create table SPJ
(
	Sno char(2),
	Pno char(2),
	Jno char(2),
	QTY int,
	primary key(Sno,Pno,Jno),
	foreign key(Sno) references S(Sno),
	foreign key(Pno) references P(Pno),
	foreign key(Jno) references J(Jno)
);


insert into S(Sno,Sname,Status,City)
values
('S1','����','20','���'),
('S2','ʢ��','10','����'),
('S3','������','30','����'),
('S4','��̩ʢ','20','���'),
('S5','Ϊ��','30','�Ϻ�');


insert into P(Pno,Pname,color,weight)
values
('P1','��ĸ','��',12),
('P2','��˨','��',17),
('P3','��˿��','��',14),
('P4','��˿��','��',14),
('P5','͹��','��',40),
('P6','����','��',30);


insert into J(Jno,Jname,CITY)
values
('J1','����','����'),
('J2','һ��','����'),
('J3','���ɳ�','���'),
('J4','�촬��','���'),
('J5','������','��ɽ'),
('J6','���ߵ糧','����'),
('J7','�뵼�峧','�Ͼ�');


insert into SPJ(Sno,Pno,Jno,QTY)
values
('S1','P1','J1',200),
('S1','P1','J3',100),
('S1','P1','J4',700),
('S1','P2','J2',100),
('S2','P3','J1',400),
('S2','P3','J2',200),
('S2','P3','J4',500),
('S2','P3','J5',400),
('S2','P5','J1',400),
('S2','P5','J2',100),
('S3','P1','J1',200),
('S3','P3','J1',200),
('S4','P5','J1',100),
('S4','P6','J3',300),
('S4','P6','J4',200),
('S5','P2','J4',100),
('S5','P3','J1',200),
('S5','P6','J2',200),
('S5','P6','J4',500);