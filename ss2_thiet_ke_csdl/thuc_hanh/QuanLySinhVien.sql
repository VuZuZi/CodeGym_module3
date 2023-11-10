create database quan_ly_sinh_vien;
use quan_ly_sinh_vien;
create table class(
	Class_id int primary key auto_increment,
	class_name varchar(60) NOT NULL,
	Start_date datetime not null,
	Status bit
);
create table student(
	student_id int primary key auto_increment,
	student_name varchar(30) not null,
	address varchar(50),
	phone varchar(20),
	status bit,
	Class_id int,
	foreign key(Class_id) references class(Class_id)
);
create table subject(
	Subid int primary key auto_increment,
	SubName varchar(50) not null,
	credit tinyint not null DEFAULT 1, check(credit >= 1),
	status bit DEFAULT 1
);
create table mark(
	MarkID int primary key auto_increment,
	subID int not null,
	studentID int not null,
	mark float default 0 check(mark between 0 and 100),
	ExamTimes tinyint default 1,
	unique (subID,studentID),
	FOREIGN KEY (subID) REFERENCES subject(Subid),
	foreign key (studentID) references student(student_id)
)