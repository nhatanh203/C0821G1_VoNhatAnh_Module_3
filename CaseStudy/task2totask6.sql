use furama_resort;

-- 2.	Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
insert into nhan_vien (ma_nhan_vien, ho_va_ten) values (2, "Le Duc Phien");

insert into nhan_vien (ma_nhan_vien, ho_va_ten) values (1, "Trung Kien Nguyen");

insert into nhan_vien (ma_nhan_vien, ho_va_ten) values (3, "Vo Nhat Anh");

insert into nhan_vien (ma_nhan_vien, ho_va_ten) values (4, "Nguyen Hoang");

-- Hàm SUBSTRING_INDEX trả về chuỗi con của chuỗi trước số lần xuất hiện của dấu phân cách.

select * from nhan_vien where substring_index(ho_va_ten, ' ' , -1) like 'h%' or  substring_index(ho_va_ten, ' ' , -1) like 't%' or substring_index(ho_va_ten, ' ' , -1) like 'k%' 	and length(ho_va_ten) <16;

-- 3.	Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.

insert into khach_hang (ma_khach_hang,ma_loai_khach,ho_ten,ngay_sinh,dia_chi) values (1,1,"Vo Nhat Anh","2003-6-4","Đà Nẵng");

alter table khach_hang
modify column gioi_tinh varchar(10);

insert into khach_hang (`ma_khach_hang`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) value ('1', 'Vo Nhat Anh', '2003-4-6', 'nam', 'Đà Nẵng');
insert into khach_hang (`ma_khach_hang`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) value ('2', 'Nguyễn Văn B', '2010-9-6', 'nam', 'Quảng Trị');
insert into khach_hang (`ma_khach_hang`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) value ('3', 'Lê Đức Phiên', '2000-12-6', 'nam', 'Hà Nội');
insert into khach_hang (`ma_khach_hang`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) value ('4', 'Nguyễn Văn A', '1998-8-4', 'nam', 'Quảng Trị');
insert into khach_hang (`ma_khach_hang`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) value ('5', 'Lê Minh Tuấn', '1997-7-1', 'nam', 'Đà Nẵng');
insert into khach_hang (`ma_khach_hang`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) value ('6', 'Võ Anh Quân', '1996-5-6', 'nam', 'Quảng Bình');

-- CURDATE() trong SQL trả về ngày hiện tại có định dạng 'YYYY-MM-DD' hoặc YYYYMMDD-- 

select *
from khach_hang
where ( dia_chi = 'Đà Nẵng' or  dia_chi = 'Quảng Trị') and ( year ( curdate() ) - year(ngay_sinh) between 18 and 50);

-- 4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. 
-- Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. 
-- Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.

insert into loai_khach (`ma_loai_khach`,`ten_loai_khach`) value ('1','Diamond');
insert into loai_khach (`ma_loai_khach`,`ten_loai_khach`) value ('2','Gold');
insert into loai_khach (`ma_loai_khach`,`ten_loai_khach`) value ('3','Diamond');



