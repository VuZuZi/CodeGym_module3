use quan_ly_sinh_vien;
insert into class value (1,'A1','2008-12-20',1);
insert into class value (2,'A2','2008-12-22',1);
insert into class value (3,'A3',current_date(),0);

select * from class;

insert into student(student_name,address,phone,`status`,class_id)
values ('Hung', 'Ha Noi', '0912113113', 1, 1);
insert into student(student_name,address,`status`,class_id)
values
('Hoa', 'Hai phong', 1, 1);
insert into student(student_name,address,phone,`status`,class_id)
values
('Manh', 'HCM', '0123123123', 0, 2);

select * from student;

insert into subject values
(1,'CF',5,1),
(2,'C',6,1),
(3,'HDJ',5,1),
(4,'RDBMS',10,1);

select * from subject;
select * from subject;

insert into mark (subid,studentid,mark,examtimes) 
values (1,1,8,1),(1,2,10,2),(2,1,12,1);

select * from mark;

select * from subject where status = true;

select * from subject where credit < 10;

select s.student_id, s.student_name, c.class_name from student s join class c on s.class_id = c.class_id;

select s.student_id, s.student_name, c.class_name 
from student s join class c on s.class_id = c.class_id
where c.class_name = 'A1';

select s.student_id, s.student_name, sub.subname, m.mark
from student s join mark m on s.student_id = m.studentid join subject sub on m.subid = sub.subid;


select s.student_id, s.student_name, sub.subname, m.mark
from student s join mark m on s.student_id = m.studentid join subject sub on m.subid = sub.subid
where sub.subname = 'CF'




