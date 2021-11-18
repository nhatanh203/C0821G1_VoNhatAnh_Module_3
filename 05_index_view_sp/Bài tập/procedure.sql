-- Bước 1: Tạo cơ sở dữ liệu demo
create database demo;

use demo;

-- Bước 2: Tạo bảng Products với các trường dữ liệu sau:
create table products(
id int primary key,
product_code int,
product_name varchar(40),
product_price int,
product_amount int,
product_description varchar(50),
product_status varchar(40)
);

insert into products
value(1,1,"Honda",1000,1,"xe hơi","Hết hàng");

insert into products
value(2,2,"BMW",2000,1,"xe hơi","Còn hàng");

insert into products
value(3,3,"Audi",2500,3,"xe hơi","Còn hàng");
-- 
-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)-- 
create index unique_index
on products(product_code);

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
create index composite_index
on products(product_name,product_price);

select *
from products
where product_code = '1';
explain select * from products where product_code = '1';

create view product as select product_code,product_name,product_price,product_status
from products;

select *
from product;
update product
set product_name = "Mercedes"
where product_name="Honda";

delete from product
where product_name="Audi";

delimiter //
create procedure display_product()
begin
select *
from products;
end;
// delimiter ;
call display_product();

delimiter //
create procedure update_product (id int,`name` varchar(40))
begin
update products
set product_name = `name`
where products_id = id;
end;
// delimiter ;
call update_product( 2 , "BMW" );

delimiter //
create procedure
delete_product_by_id ( id int )
begin
delete from products
where products.id = id;
end;
// delimiter ;
call delete_product_by_id( 2 );
