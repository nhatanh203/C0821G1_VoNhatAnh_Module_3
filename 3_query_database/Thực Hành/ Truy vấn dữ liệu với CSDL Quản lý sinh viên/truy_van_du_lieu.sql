use quan_li_sinh_vien;

select* from student;

select* from student
where status = true;

select s.student_id, s.student_name, c.class_name
from student s join class c on s.class_id = c.class_id

select s.student_id, s.student_name, c.class_name
from student s join class c on s.class_id = c.class_id
where c.class_name = 'A1'	
