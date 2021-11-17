use quan_li_sinh_vien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select *
from subject 
order by credit desc 
limit 1;

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.

alter table subject
    add column `point` varchar(2)
    after `Status`;
    
update `quan_li_sinh_vien`.`subject` set `point` = '2' where (`sub_id` = '1');
update `quan_li_sinh_vien`.`subject` set `point` = '3' where (`sub_id` = '2');
update `quan_li_sinh_vien`.`subject` set `point` = '4' where (`sub_id` = '3');
update `quan_li_sinh_vien`.`subject` set `point` = '7' where (`sub_id` = '4');

select *
from subject 
order by `point` desc
limit 2; 

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
alter table student
    add column `point` varchar(2)
    after `class_id`;
    
update `quan_li_sinh_vien`.`student` set `point` = '7' where (`student_id` = '1');
update `quan_li_sinh_vien`.`student` set `point` = '4' where (`student_id` = '2');
update `quan_li_sinh_vien`.`student` set `point` = '8' where (`student_id` = '3');

select avg(point)
from student 
order by `point` desc;
