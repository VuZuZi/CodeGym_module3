use quuan_ly_sinh_vien;
select * from student s
where s.student_name like 'h%';

select * from class c
where month(start_date) = 12 ;

select * from subject s
where s.credit >= 3 and s.credit <=5;

select * from student;

update student
set Class_id = 2
where student_name like 'hung';

SET SQL_SAFE_UPDATES = 0;-- false
UPDATE student
SET class_id = 2
WHERE student_name = 'hung';
SET SQL_SAFE_UPDATES = 1;-- true

select * from student s
where s.student_name like 'hung';

select s.student_name, sub.SubName, m.mark from student s 
join mark m on s.student_id = m.studentid 
join subject sub on m.subID = sub.Subid;

select * from mark;
select * from subject








