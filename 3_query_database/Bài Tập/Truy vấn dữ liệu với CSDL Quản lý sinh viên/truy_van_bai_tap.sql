use quan_li_sinh_vien;

select * from student;
select* from class;


-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
select *
from student
where student_name like 'h%'

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
select *
from class
where month(start_date) = 12;

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
select * from subject 
where credit between 3 and 5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.

SET SQL_SAFE_UPDATES=0;
update student
set class_id = 2
where student_name = "Hung";
SET SQL_SAFE_UPDATES=1;
select *
from student

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.-- 
select student_name, sub_name, mark
from student s 
inner join mark m on s.student_id = m.student_id
inner join `subject` suj on m.sub_id = suj.sub_id
order by m.mark desc, s.student_name asc;


