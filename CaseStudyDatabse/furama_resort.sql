create database furama_resort;

use furama_resort;

create table vi_tri(
ma_vi_tri int primary key ,
ten_vi_tri varchar(45)
);

create table trinh_do(
ma_trinh_do int primary key,
ten_trinh_do varchar(45)
);

create table loai_khach(
ma_loai_khach int primary key,
ten_loai_khach varchar(45)
);

create table bo_phan (
ma_bo_phan int primary key,
ten_bo_phan varchar(45)
);

create table kieu_thue(
ma_kieu_thue int primary key,
ten_kieu_thue varchar(45),
gia_thue double
);

create table dich_vu_di_kem (
ma_dich_vu_di_kem int primary key,
ten_dich_vu_di_kem varchar(45),
gia double,
don_vi int,
trang_thai varchar(45)
);

create table loai_dich_vu(
ma_loai_dich_vu int primary key,
ten_loai_dich_vu varchar(45)
);

create table nhan_vien(
ma_nhan_vien int primary key, 
ho_va_ten varchar(45),
ngay_sinh date,
so_cmnd varchar(45),
luong double,
so_dien_thoai varchar(45),
email varchar(45),
dia_chi varchar(45),
ma_vi_tri int,
ma_trinh_do int,
ma_bo_phan int,
foreign key (ma_vi_tri) references vi_tri(ma_vi_tri),
foreign key(ma_trinh_do) references trinh_do(ma_trinh_do),
foreign key (ma_bo_phan) references bo_phan(ma_bo_phan)
);

create table khach_hang(
ma_khach_hang int primary key,
ma_loai_khach int,
ho_ten varchar(45),
ngay_sinh date,
gioi_tinh bit(1),
so_cmnd varchar(45),
so_dien_thoai varchar(45),
email varchar(45),
dia_chi varchar(45),
foreign key (ma_loai_khach) references loai_khach(ma_loai_khach)
);

create table dich_vu (
ma_dich_vu int primary key,
ten_dich_vu varchar(45),
dien_tich int,
chi_phi_thue double,
so_nguoi_toi_da int,
ma_kieu_thue int,
ma_loai_dich_vu int,
tieu_chuan_phong varchar(45),
mo_ta_tien_nghi_khac varchar(45),
dien_tich_ho_boi double,
so_tang int,
foreign key (ma_kieu_thue) references kieu_thue(ma_kieu_thue),
foreign key (ma_loai_dich_vu) references loai_dich_vu(ma_loai_dich_vu)
);

create table hop_dong(
ma_hop_dong int primary key,
ngay_lam_hop_dong datetime,
ngay_ket_thuc datetime,
tien_dat_coc double,
tong_tien double,
ma_nhan_vien int,
ma_dich_vu int,
ma_khach_hang int,
foreign key (ma_nhan_vien) references nhan_vien (ma_nhan_vien),
foreign key (ma_dich_vu) references dich_vu (ma_dich_vu),
foreign key (ma_khach_hang) references khach_hang (ma_khach_hang)
);

create table hop_dong_chi_tiet(
ma_hop_dong_chi_tiet int primary key,
ma_hop_dong int,
ma_dich_vu_di_kem int,
so_luong int,
foreign key (ma_hop_dong) references hop_dong(ma_hop_dong),
foreign key (ma_dich_vu_di_kem) references dich_vu_di_kem(ma_dich_vu_di_kem)
);

use furama_resort;

insert into `furama_resort`.`dich_vu_di_kem` (`ma_dich_vu_di_kem`, `ten_dich_vu_di_kem`, `gia`) values ('1', 'Resort', '1000');
insert into `furama_resort`.`dich_vu_di_kem` (`ma_dich_vu_di_kem`, `ten_dich_vu_di_kem`, `gia`) values ('2', 'Bida', '2000');
insert into `furama_resort`.`dich_vu_di_kem` (`ma_dich_vu_di_kem`, `ten_dich_vu_di_kem`, `gia`) values ('3', 'Massage', '5000');
insert into `furama_resort`.`kieu_thue` (`ma_kieu_thue`, `ten_kieu_thue`, `gia_thue`) values ('1', 'Resort', '1000');
insert into `furama_resort`.`kieu_thue` (`ma_kieu_thue`, `ten_kieu_thue`, `gia_thue`) values ('2', 'Bida', '2000');
insert into `furama_resort`.`kieu_thue` (`ma_kieu_thue`, `ten_kieu_thue`) values ('3', 'Massage');
insert into `furama_resort`.`loai_dich_vu` (`ma_loai_dich_vu`, `ten_loai_dich_vu`) values ('1', 'Resort');
insert into `furama_resort`.`loai_dich_vu` (`ma_loai_dich_vu`, `ten_loai_dich_vu`) values ('2', 'Bida');
insert into `furama_resort`.`loai_dich_vu` (`ma_loai_dich_vu`) values ('3');
insert into `furama_resort`.`dich_vu` (`ma_dich_vu`, `ten_dich_vu`, `dien_tich`, `chi_phi_thue`, `so_nguoi_toi_da`, `ma_kieu_thue`, `ma_loai_dich_vu`, `tieu_chuan_phong`, `dien_tich_ho_boi`, `so_tang`) values ('1', 'Resort', '200', '1000', '10', '1', '1', 'vip', '20', '10');
insert into `furama_resort`.`dich_vu` (`ma_dich_vu`, `ten_dich_vu`, `dien_tich`, `chi_phi_thue`, `so_nguoi_toi_da`, `ma_kieu_thue`, `ma_loai_dich_vu`, `tieu_chuan_phong`, `so_tang`) values ('2', 'Bida', '200', '2000', '6', '2', '2', 'silver', '2');
insert into `furama_resort`.`dich_vu` (`ma_dich_vu`, `ten_dich_vu`, `dien_tich`, `chi_phi_thue`, `so_nguoi_toi_da`, `ma_kieu_thue`, `ma_loai_dich_vu`, `tieu_chuan_phong`, `dien_tich_ho_boi`, `so_tang`) values ('3', 'Massage', '300', '5000', '10', '3', '3', 'vip', '20', '4');
insert into `furama_resort`.`hop_dong_chi_tiet` (`ma_hop_dong_chi_tiet`, `ma_hop_dong`, `ma_dich_vu_di_kem`, `so_luong`) values ('1', '1', '1', '3');
insert into `furama_resort`.`hop_dong_chi_tiet` (`ma_hop_dong_chi_tiet`, `ma_hop_dong`, `ma_dich_vu_di_kem`) values ('2', '2', '2');
insert into `furama_resort`.`hop_dong` (`ma_hop_dong`, `ngay_lam_hop_dong`, `ngay_ket_thuc`, `tien_dat_coc`, `ma_nhan_vien`, `ma_dich_vu`, `ma_khach_hang`) values ('3', '2018-04-07', '2018-12-31', '5000', '1', '1', '4');


-- 2.	Hi???n th??? th??ng tin c???a t???t c??? nh??n vi??n c?? trong h??? th???ng c?? t??n b???t ?????u l?? m???t trong c??c k?? t??? ???H???, ???T??? ho???c ???K??? v?? c?? t???i ??a 15 k?? t???.
insert into nhan_vien (ma_nhan_vien, ho_va_ten) values (2, "Le Duc Phien");

insert into nhan_vien (ma_nhan_vien, ho_va_ten) values (1, "Trung Kien Nguyen");

insert into nhan_vien (ma_nhan_vien, ho_va_ten) values (3, "Vo Nhat Anh");

insert into nhan_vien (ma_nhan_vien, ho_va_ten) values (4, "Nguyen Hoang");

-- H??m SUBSTRING_INDEX tr??? v??? chu???i con c???a chu???i tr?????c s??? l???n xu???t hi???n c???a d???u ph??n c??ch.

select * from nhan_vien where substring_index(ho_va_ten, ' ' , -1) like 'h%' or  substring_index(ho_va_ten, ' ' , -1) like 't%' or substring_index(ho_va_ten, ' ' , -1) like 'k%' 	and length(ho_va_ten) <16;

-- 3.	Hi???n th??? th??ng tin c???a t???t c??? kh??ch h??ng c?? ????? tu???i t??? 18 ?????n 50 tu???i v?? c?? ?????a ch??? ??? ??????? N???ng??? ho???c ???Qu???ng Tr??????.

insert into khach_hang (ma_khach_hang,ma_loai_khach,ho_ten,ngay_sinh,dia_chi) values (1,1,"Vo Nhat Anh","2003-6-4","???? N???ng");

alter table khach_hang
modify column gioi_tinh varchar(10);

insert into khach_hang (`ma_khach_hang`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) value ('1', 'Vo Nhat Anh', '2003-4-6', 'nam', '???? N???ng');
insert into khach_hang (`ma_khach_hang`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) value ('2', 'Nguy???n V??n B', '2010-9-6', 'nam', 'Qu???ng Tr???');
insert into khach_hang (`ma_khach_hang`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) value ('3', 'L?? ?????c Phi??n', '2000-12-6', 'nam', 'H?? N???i');
insert into khach_hang (`ma_khach_hang`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) value ('4', 'Nguy???n V??n A', '1998-8-4', 'nam', 'Qu???ng Tr???');
insert into khach_hang (`ma_khach_hang`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) value ('5', 'L?? Minh Tu???n', '1997-7-1', 'nam', '???? N???ng');
insert into khach_hang (`ma_khach_hang`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) value ('6', 'V?? Anh Qu??n', '1996-5-6', 'nam', 'Qu???ng B??nh');
insert into khach_hang (`ma_khach_hang`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) value ('7', 'V?? Nh???t Anh', '2000-5-6', 'nam', 'Qu???ng Nam');
insert into khach_hang (`ma_khach_hang`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) value ('8', 'V?? Anh Qu??n', '1999-5-6', 'nam', 'H?? N???i');
insert into  `furama_resort`.`khach_hang` (`ma_khach_hang`, `ma_loai_khach`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) value ('9', '1', 'L?? V??n A', '1997-02-01', 'nam', 'Qu???ng Ng??i');
insert into  `furama_resort`.`khach_hang` (`ma_khach_hang`, `ma_loai_khach`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) value ('10', '3', 'Nguy???n V??n C', '2000-01-07', 'nam', 'V??nh Ph??c');
insert into  `furama_resort`.`khach_hang` (`ma_khach_hang`, `ma_loai_khach`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) value ('11', '1', 'Nguy??n V??n D', '1999-02-08', 'nam', 'V??nh Ph??c');
insert into  `furama_resort`.`khach_hang` (`ma_khach_hang`, `ma_loai_khach`, `ho_ten`, `ngay_sinh`, `gioi_tinh`) value ('12', '2', 'L?? Th??? A', '2001-01-09', 'n???');
update `furama_resort`.`khach_hang` set `dia_chi` = 'Vinh'  where (`ma_khach_hang` = '11');
insert into `furama_resort`.`hop_dong` (`ma_hop_dong`, `ngay_lam_hop_dong`, `ngay_ket_thuc`, `tien_dat_coc`, `ma_nhan_vien`, `ma_dich_vu`, `ma_khach_hang`) value ('4', '2017-04-08', '2020-09-09', '1000', '1', '1', '8');
insert into `furama_resort`.`hop_dong` (`ma_hop_dong`, `ngay_lam_hop_dong`, `ngay_ket_thuc`, `tien_dat_coc`, `ma_nhan_vien`, `ma_dich_vu`, `ma_khach_hang`) value ('5', '2016-03-07', '2017-03-02', '7000', '3', '3', '10');
insert into `furama_resort`.`hop_dong` (`ma_hop_dong`, `ngay_lam_hop_dong`, `ngay_ket_thuc`, `tien_dat_coc`, `ma_nhan_vien`, `ma_dich_vu`, `ma_khach_hang`) value ('6', '2020-09-03', '2021-03-08', '1000', '2', '2', '11');
insert into `furama_resort`.`hop_dong` (`ma_hop_dong`, `ngay_lam_hop_dong`, `ngay_ket_thuc`, `tien_dat_coc`, `ma_nhan_vien`, `ma_dich_vu`, `ma_khach_hang`) value ('7', '2019-04-05', '2021-03-08', '8000', '1', '1', '12');
insert into `furama_resort`.`nhan_vien` (`ma_nhan_vien`, `ho_va_ten`) value ('5', 'Nguy???n V??n A');
insert into `furama_resort`.`nhan_vien` (`ma_nhan_vien`, `ho_va_ten`) value ('6', 'L?? Th??? C');
insert into `furama_resort`.`nhan_vien` (`ma_nhan_vien`, `ho_va_ten`) value ('7', 'V?? Nh???t B');
insert into `furama_resort`.`hop_dong_chi_tiet` (`ma_hop_dong_chi_tiet`, `ma_hop_dong`, `ma_dich_vu_di_kem`, `so_luong`) value ('3', '3', '2', '3');
insert into `furama_resort`.`hop_dong_chi_tiet` (`ma_hop_dong_chi_tiet`, `ma_hop_dong`, `ma_dich_vu_di_kem`, `so_luong`) value ('4', '4', '1', '1');
insert into `furama_resort`.`hop_dong_chi_tiet` (`ma_hop_dong_chi_tiet`, `ma_hop_dong`, `ma_dich_vu_di_kem`, `so_luong`) value ('5', '5', '3', '2');
insert into `furama_resort`.`hop_dong_chi_tiet` (`ma_hop_dong_chi_tiet`, `ma_hop_dong`, `ma_dich_vu_di_kem`, `so_luong`) value ('6', '6', '2', '1');
insert into `furama_resort`.`hop_dong_chi_tiet` (`ma_hop_dong_chi_tiet`, `ma_hop_dong`, `ma_dich_vu_di_kem`) value ('7', '7', '1');
update `furama_resort`.`khach_hang` set `ma_loai_khach` = '2' where (`ma_khach_hang` = '7');
update `furama_resort`.`khach_hang` set `ma_loai_khach` = '1' where (`ma_khach_hang` = '8');
insert into `furama_resort`.`bo_phan` (`ma_bo_phan`, `ten_bo_phan`) value ('1', 'Nh??n s???');
insert into `furama_resort`.`bo_phan` (`ma_bo_phan`, `ten_bo_phan`) value ('2', 'Marketing');
insert into `furama_resort`.`bo_phan` (`ma_bo_phan`, `ten_bo_phan`) value ('3', 'Ch??m s??c kh??ch h??ng');
insert into `furama_resort`.`trinh_do` (`ma_trinh_do`, `ten_trinh_do`) value ('1', 'Chuy??n m??n cao');
insert into `furama_resort`.`trinh_do` (`ma_trinh_do`, `ten_trinh_do`) value ('2', 'Kh??');
insert into `furama_resort`.`trinh_do` (`ma_trinh_do`) value ('3');
update `furama_resort`.`nhan_vien` set `ma_trinh_do` = '1', `ma_bo_phan` = '1' where (`ma_nhan_vien` = '1');
update `furama_resort`.`nhan_vien` set `ma_trinh_do` = '2', `ma_bo_phan` = '2' where (`ma_nhan_vien` = '2');
update `furama_resort`.`nhan_vien` set `ma_trinh_do` = '1', `ma_bo_phan` = '3' where (`ma_nhan_vien` = '3');
update `furama_resort`.`nhan_vien` set `ma_trinh_do` = '3', `ma_bo_phan` = '2' where (`ma_nhan_vien` = '4');
update `furama_resort`.`nhan_vien` set `ma_trinh_do` = '2', `ma_bo_phan` = '1' where (`ma_nhan_vien` = '5');
update `furama_resort`.`nhan_vien` set `ma_trinh_do` = '1', `ma_bo_phan` = '3' where (`ma_nhan_vien` = '6');
update `furama_resort`.`nhan_vien` set `ma_trinh_do` = '2', `ma_bo_phan` = '2' where (`ma_nhan_vien` = '7');
insert into `furama_resort`.`hop_dong` (`ma_hop_dong`, `ngay_lam_hop_dong`, `ngay_ket_thuc`, `tien_dat_coc`, `ma_nhan_vien`, `ma_dich_vu`) value ('8', '2018-04-03', '2018-09-01', '12000', '7', '1');
insert into `furama_resort`.`hop_dong` (`ma_hop_dong`, `ngay_lam_hop_dong`, `ngay_ket_thuc`, `tien_dat_coc`, `ma_nhan_vien`, `ma_dich_vu`, `ma_khach_hang`) value ('9', '2018-05-06', '2018-07-02', '1200', '7', '1', '3');
insert into `furama_resort`.`hop_dong` (`ma_hop_dong`, `ngay_lam_hop_dong`, `ngay_ket_thuc`, `tien_dat_coc`, `ma_nhan_vien`, `ma_dich_vu`, `ma_khach_hang`) value ('10', '2018-07-09', '2019-06-01', '1000', '6', '3', '5');
insert into `furama_resort`.`hop_dong` (`ma_hop_dong`, `ngay_lam_hop_dong`, `ngay_ket_thuc`, `tien_dat_coc`, `ma_nhan_vien`, `ma_dich_vu`, `ma_khach_hang`) value ('11', '2019-06-05', '2019-07-05', '2000', '6', '3', '5');
insert into `furama_resort`.`hop_dong` (`ma_hop_dong`, `ngay_lam_hop_dong`, `ngay_ket_thuc`, `tien_dat_coc`, `ma_nhan_vien`, `ma_dich_vu`) value ('12', '2018-07-04', '2018-08-04', '3000', '6', '3');
insert into `furama_resort`.`loai_khach` (`ma_loai_khach`, `ten_loai_khach`) value ('4', 'Platinum');
update `furama_resort`.`hop_dong` set `tong_tien` = '12000000' where (`ma_hop_dong` = '1');
update `furama_resort`.`hop_dong` set `tong_tien` = '34000000' where (`ma_hop_dong` = '2');
update `furama_resort`.`hop_dong` set `tong_tien` = '2100000' where (`ma_hop_dong` = '3');
update `furama_resort`.`hop_dong` set `tong_tien` = '2100000' where (`ma_hop_dong` = '4');
update `furama_resort`.`hop_dong` set `tong_tien` = '9000000' where (`ma_hop_dong` = '5');
update `furama_resort`.`hop_dong` set `tong_tien` = '30000000' where (`ma_hop_dong` = '6');
update `furama_resort`.`hop_dong` set `tong_tien` = '8000000' where (`ma_hop_dong` = '7');
update `furama_resort`.`hop_dong` set `tong_tien` = '1000000' where (`ma_hop_dong` = '8');
update `furama_resort`.`hop_dong` set `tong_tien` = '21000000' where (`ma_hop_dong` = '9');
update `furama_resort`.`hop_dong` set `tong_tien` = '19000000' where (`ma_hop_dong` = '10');
update `furama_resort`.`hop_dong` set `tong_tien` = '2200000' where (`ma_hop_dong` = '11');
update `furama_resort`.`khach_hang` set `ma_loai_khach` = '4' where (`ma_khach_hang` = '12');
update `furama_resort`.`khach_hang` set `ma_loai_khach` = '4' where (`ma_khach_hang` = '11');
update `furama_resort`.`khach_hang` set `ma_loai_khach` = '4' where (`ma_khach_hang` = '10');
update `furama_resort`.`khach_hang` set `ma_loai_khach` = '4' where (`ma_khach_hang` = '9');
update `furama_resort`.`khach_hang` set `ma_loai_khach` = '4' where (`ma_khach_hang` = '8');
update `furama_resort`.`khach_hang` set `ma_loai_khach` = '4' where (`ma_khach_hang` = '7');
update `furama_resort`.`khach_hang` set `ma_loai_khach` = '4' where (`ma_khach_hang` = '6');
update `furama_resort`.`khach_hang` set `ma_loai_khach` = '4' where (`ma_khach_hang` = '5');
update `furama_resort`.`hop_dong` set `ma_khach_hang` = '9' where (`ma_hop_dong` = '8');
update `furama_resort`.`hop_dong` set `tong_tien` = '22000000' where (`ma_hop_dong` = '11');


-- CURDATE() trong SQL tr??? v??? ng??y hi???n t???i c?? ?????nh d???ng 'YYYY-MM-DD' ho???c YYYYMMDD-- 

select *
from khach_hang
where ( dia_chi = '???? N???ng' or  dia_chi = 'Qu???ng Tr???') and ( year ( curdate() ) - year(ngay_sinh) between 18 and 50);

-- 4.	?????m xem t????ng ???ng v???i m???i kh??ch h??ng ???? t???ng ?????t ph??ng bao nhi??u l???n. 
-- K???t qu??? hi???n th??? ???????c s???p x???p t??ng d???n theo s??? l???n ?????t ph??ng c???a kh??ch h??ng. 
-- Ch??? ?????m nh???ng kh??ch h??ng n??o c?? T??n lo???i kh??ch h??ng l?? ???Diamond???.

insert into loai_khach (`ma_loai_khach`,`ten_loai_khach`) value ('1','Diamond');
insert into loai_khach (`ma_loai_khach`,`ten_loai_khach`) value ('2','Gold');
insert into loai_khach (`ma_loai_khach`,`ten_loai_khach`) value ('3','Diamond');

select kh.ma_khach_hang, kh.ma_loai_khach, kh.ho_ten , lk.ten_loai_khach , count(*) as booking
from khach_hang kh 
   inner join loai_khach lk  on kh.ma_loai_khach = lk.ma_loai_khach
   left join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
where lk.ten_loai_khach = 'Diamond'
group by ma_khach_hang
order by ma_khach_hang asc;

-- 5.	Hi???n th??? ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien
--  (V???i t???ng ti???n ???????c t??nh theo c??ng th???c nh?? sau: ChiPhiThue + SoLuong*Gia, v???i SoLuong 
-- v?? Gi?? l?? t??? b???ng dich_vu_di_kem, hop_dong_chi_tiet) cho t???t c??? c??c kh??ch h??ng ???? t???ng ?????t ph??ng. 
-- (nh???ng kh??ch h??ng n??o ch??a t???ng ?????t ph??ng c??ng ph???i hi???n th??? ra).

select khach_hang.ma_khach_hang,khach_hang.ho_ten,loai_khach.ten_loai_khach,hop_dong.ma_hop_dong,hop_dong.ma_dich_vu,hop_dong.ngay_lam_hop_dong,hop_dong.ngay_ket_thuc, sum( dich_vu.chi_phi_thue  +  hop_dong_chi_tiet.so_luong  *  dich_vu_di_kem.gia ) as tong_tien
from khach_hang
left join loai_khach on khach_hang.ma_loai_khach = loai_khach.ma_loai_khach
left join hop_dong on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
left join dich_vu on hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
left join hop_dong_chi_tiet on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
left join dich_vu_di_kem on hop_dong_chi_tiet .ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
group by  khach_hang.ma_khach_hang,hop_dong.ma_hop_dong,tong_tien;


-- 6.	Hi???n th??? ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu
--  c???a t???t c??? c??c lo???i d???ch v??? ch??a t???ng ???????c kh??ch h??ng th???c hi???n ?????t t??? qu?? 1 c???a n??m 2019 (Qu?? 1 l?? th??ng 1, 2, 3).

select dich_vu.ma_dich_vu , dich_vu.ten_dich_vu, dich_vu.dien_tich, loai_dich_vu.ten_loai_dich_vu, hop_dong.ngay_lam_hop_dong 
from dich_vu 
inner join loai_dich_vu on dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu 
left join hop_dong on dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
where exists(
select hop_dong.ngay_lam_hop_dong
from hop_dong
where ( ngay_lam_hop_dong between '2019-01-01' and '2019-03-30')
);

-- 7.	Hi???n th??? th??ng tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu 
-- c???a t???t c??? c??c lo???i d???ch v??? ???? t???ng ???????c kh??ch h??ng ?????t ph??ng trong n??m 2018 nh??ng ch??a t???ng ???????c kh??ch h??ng ?????t ph??ng trong n??m 2019.

select dich_vu.ma_dich_vu , dich_vu.ten_dich_vu , dich_vu.dien_tich, dich_vu.so_nguoi_toi_da, dich_vu.chi_phi_thue, loai_dich_vu.ten_loai_dich_vu,hop_dong.ngay_lam_hop_dong
from dich_vu
inner join loai_dich_vu on dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
left join hop_dong on dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
where hop_dong.ngay_lam_hop_dong not in (
select hop_dong.ngay_lam_hop_dong
from hop_dong
where (hop_dong.ngay_lam_hop_dong not between '2018-01-01' and '2018-12-30' ) and ( hop_dong.ngay_lam_hop_dong between '2019-01-01' and '2019-12-31' )
);

-- 8.	Hi???n th??? th??ng tin ho_ten kh??ch h??ng c?? trong h??? th???ng, v???i y??u c???u ho_ten kh??ng tr??ng nhau.
-- H???c vi??n s??? d???ng theo 3 c??ch kh??c nhau ????? th???c hi???n y??u c???u tr??n.

-- *C??ch 1 :

select distinct khach_hang.ho_ten from khach_hang;

-- *C??ch 2 :

select khach_hang.ho_ten from khach_hang
union
select khach_hang.ho_ten from khach_hang;

-- *C??ch 3 :

select khach_hang.ho_ten 
from khach_hang 
group by  khach_hang.ho_ten;

-- 9.	Th???c hi???n th???ng k?? doanh thu theo th??ng, ngh??a l?? t????ng ???ng v???i m???i th??ng trong n??m 2019 th?? s??? c?? bao nhi??u kh??ch h??ng th???c hi???n ?????t ph??ng.

select dich_vu.ten_dich_vu, hop_dong.ngay_lam_hop_dong, hop_dong.tong_tien, month(ngay_lam_hop_dong) as 'thang' , (hop_dong.tong_tien) as 'doanh_thu'
from hop_dong 
join dich_vu on dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
where(year(hop_dong.ngay_lam_hop_dong) = 2019 ) 
group by month(ngay_lam_hop_dong);

-- 10.	Hi???n th??? th??ng tin t????ng ???ng v???i t???ng h???p ?????ng th?? ???? s??? d???ng bao nhi??u d???ch v??? ??i k??m.
--  K???t qu??? hi???n th??? bao g???m ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luong_dich_vu_di_kem
--  (???????c t??nh d???a tr??n vi???c sum so_luong ??? dich_vu_di_kem).
-- 

select hop_dong.ma_hop_dong, hop_dong.ngay_lam_hop_dong, hop_dong.ngay_ket_thuc, hop_dong.tien_dat_coc, 
sum(hop_dong_chi_tiet.so_luong) as so_luong_dich_vu_di_kem
from hop_dong_chi_tiet
join hop_dong on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
group by hop_dong.ma_hop_dong;

-- 11.	Hi???n th??? th??ng tin c??c d???ch v??? ??i k??m ???? ???????c s??? d???ng b???i nh???ng kh??ch h??ng c?? 
-- ten_loai_khach l?? ???Diamond??? v?? c?? dia_chi ??? ???Vinh??? ho???c ???Qu???ng Ng??i???.

select kh.ma_khach_hang, kh.dia_chi , loai_khach.ma_loai_khach, dich_vu_di_kem.ten_dich_vu_di_kem
from khach_hang kh 

inner join loai_khach on kh.ma_loai_khach = loai_khach.ma_loai_khach

left join hop_dong on hop_dong.ma_khach_hang = kh.ma_khach_hang

inner join hop_dong_chi_tiet on hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong

inner join dich_vu_di_kem on dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem

where ( loai_khach.ten_loai_khach = 'Diamond' ) and (kh.dia_chi = 'Qu???ng Ng??i' or kh.dia_chi =  'Vinh');

-- 12.	Hi???n th??? th??ng tin ma_hop_dong, ho_ten (nh??n vi??n), ho_ten (kh??ch h??ng), so_dien_thoai (kh??ch h??ng), ten_dich_vu, so_luong_dich_vu_di_kem
--  (???????c t??nh d???a tr??n vi???c sum so_luong ??? dich_vu_di_kem), tien_dat_coc c???a t???t c??? c??c d???ch v??? ???? t???ng ???????c kh??ch h??ng
--  ?????t v??o 3 th??ng cu???i n??m 2019 nh??ng ch??a t???ng ???????c kh??ch h??ng ?????t v??o 6 th??ng ?????u n??m 2019.


select hop_dong.ma_hop_dong, nhan_vien.ho_va_ten, khach_hang.ho_ten, khach_hang.so_dien_thoai, dich_vu_di_kem.ten_dich_vu_di_kem
from khach_hang 
join hop_dong on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
join hop_dong_chi_tiet  on hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
join dich_vu_di_kem  on dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem 
join nhan_vien on nhan_vien.ma_nhan_vien = hop_dong.ma_nhan_vien
where year(hop_dong.ngay_lam_hop_dong) = 2019 and month(hop_dong.ngay_lam_hop_dong) not in (1, 2, 3, 4, 5, 6); 

-- 13.	Hi???n th??? th??ng tin c??c D???ch v??? ??i k??m ???????c s??? d???ng nhi???u nh???t b???i c??c Kh??ch h??ng ???? ?????t ph??ng.
--  (L??u ?? l?? c?? th??? c?? nhi???u d???ch v??? c?? s??? l???n s??? d???ng nhi???u nh?? nhau).
-- 

select dich_vu_di_kem.ma_dich_vu_di_kem, dich_vu_di_kem.ten_dich_vu_di_kem, dich_vu_di_kem.gia,dich_vu_di_kem.don_vi,dich_vu_di_kem.trang_thai, max(hop_dong_chi_tiet.so_luong) as dich_vu_su_dung_nhieu
from hop_dong_chi_tiet
join hop_dong on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
join dich_vu_di_kem on dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
group by hop_dong_chi_tiet.ma_dich_vu_di_kem;


-- 14.	Hi???n th??? th??ng tin t???t c??? c??c D???ch v??? ??i k??m ch??? m???i ???????c s??? d???ng m???t l???n duy nh???t.
--  Th??ng tin hi???n th??? bao g???m ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung (???????c t??nh d???a tr??n vi???c count c??c ma_dich_vu_di_kem).
-- 	

select hop_dong.ma_hop_dong, dich_vu_di_kem.ten_dich_vu_di_kem, count(dich_vu_di_kem.ma_dich_vu_di_kem) as so_lan_su_dung
from nhan_vien
join hop_dong on hop_dong.ma_nhan_vien = nhan_vien.ma_nhan_vien
join khach_hang on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
join dich_vu on dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
join hop_dong_chi_tiet on hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
join dich_vu_di_kem on dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
group by dich_vu_di_kem.ma_dich_vu_di_kem
having so_lan_su_dung = 1
order by so_lan_su_dung;

-- C??u l???nh fix l???i :
-- #1055 - Expression of SELECT list is not in GROUP BY clause and contains nonaggregated column this is incompatible with sql_mode=only_full_group_by
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

-- 15.	Hi???n thi th??ng tin c???a t???t c??? nh??n vi??n bao g???m ma_nhan_vien, ho_ten, trinh_do, ten_bo_phan, so_dien_thoai,
--  dia_chi m???i ch??? l???p ???????c t???i ??a 3 h???p ?????ng t??? n??m 2018 ?????n 2019.
-- 
select nhan_vien.ma_nhan_vien, nhan_vien.ho_va_ten, trinh_do.ten_trinh_do, bo_phan.ten_bo_phan, nhan_vien.so_dien_thoai, nhan_vien.dia_chi, count(hop_dong.ma_hop_dong) as so_luong_hop_dong
from nhan_vien
join trinh_do on trinh_do.ma_trinh_do = nhan_vien.ma_trinh_do
join bo_phan on bo_phan.ma_bo_phan = nhan_vien.ma_bo_phan
join hop_dong on hop_dong.ma_nhan_vien = hop_dong.ma_nhan_vien
where year((hop_dong.ngay_lam_hop_dong) between 2018 and 2019)
group by hop_dong.ma_nhan_vien
having so_luong_hop_dong <= 3;	

-- 16.	X??a nh???ng Nh??n vi??n ch??a t???ng l???p ???????c h???p ?????ng n??o t??? n??m 2017 ?????n n??m 2019.
SET SQL_SAFE_UPDATES=0;
delete from nhan_vien 
where nhan_vien.ma_nhan_vien not in ( select nhan_vien.ma_nhan_vien from contract where year(ngay_lam_hop_dong)  between 2017 and 2019 );
SET SQL_SAFE_UPDATES=1;
select * from nhan_vien;

-- 17.	C???p nh???t th??ng tin nh???ng kh??ch h??ng c?? ten_loai_khach t??? Platinum l??n Diamond,
--  ch??? c???p nh???t nh???ng kh??ch h??ng ???? t???ng ?????t ph??ng v???i T???ng Ti???n thanh to??n trong n??m 2019 l?? l???n h??n 10.000.000 VN??.
create view cap_nhat_thanh_toan_2019 as
select khach_hang.ma_khach_hang, khach_hang.ho_ten, loai_khach.ten_loai_khach, sum(hop_dong.tong_tien) as tong_tien_thanh_toan
from hop_dong
join khach_hang on khach_hang.ma_khach_hang =  hop_dong.ma_khach_hang
join loai_khach on loai_khach.ma_loai_khach = khach_hang.ma_loai_khach
where (year(ngay_lam_hop_dong) = 2019) and (loai_khach.ma_loai_khach = 4)
group by khach_hang.ma_khach_hang;

update khach_hang set ma_loai_khach = 1 where ma_khach_hang in (select ma_khach_hang from cap_nhat_thanh_toan_2019 where tong_tien_thanh_toan > 10000000);
select * from khach_hang;

-- 18.	X??a nh???ng kh??ch h??ng c?? h???p ?????ng tr?????c n??m 2016 (ch?? ?? r??ng bu???c gi???a c??c b???ng).

delete from khach_hang
 where khach_hang.ma_khach_hang in ( select  hop_dong.ma_khach_hang
from hop_dong where(year(hop_dong.ngay_lam_hop_dong) < 2016));

-- 19.	C???p nh???t gi?? cho c??c d???ch v??? ??i k??m ???????c s??? d???ng tr??n 10 l???n trong n??m 2019 l??n g???p ????i.
select * from dich_vu_di_kem;

create view so_lan_dung_dich_vu
as
select dich_vu_di_kem.ma_dich_vu_di_kem,dich_vu_di_kem.ten_dich_vu_di_kem,dich_vu_di_kem.gia,sum(hop_dong_chi_tiet.so_luong) as so_lan_su_dung
from dich_vu_di_kem 
inner join hop_dong_chi_tiet on  hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
group by dich_vu_di_kem.ma_dich_vu_di_kem;

update dich_vu_di_kem set gia = gia*2 where ma_dich_vu_di_kem in (select ma_dich_vu_di_kem from so_lan_dung_dich_vu where so_lan_su_dung >10);

select * from dich_vu_di_kem;

-- 20.	Hi???n th??? th??ng tin c???a t???t c??? c??c nh??n vi??n v?? kh??ch h??ng c?? trong h??? th???ng, th??ng tin hi???n th??? bao g???m id
--  (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.

select ma_nhan_vien as id , ho_va_ten, ngay_sinh, so_dien_thoai, email, dia_chi
from nhan_vien
union
select ma_khach_hang, ho_ten, ngay_sinh, so_dien_thoai, email, dia_chi
from khach_hang;


