use quan_li_ban_hang;

insert into customer values (1,"Quan",10),(2,"Oanh",20),(3,"Ha",50);

insert into orders(o1_id,c_id,o1_date)values
(1,1,"2006-03-21"),(2,2,"2006-03-23"),(3,1,"2006-03-16");

insert into product values
(1, "May Giat",3),(2, "Tu lanh",5),(3, "Dieu Hoa",7),(4, "Quat",1),(5, "Bep Dien",2);

insert into order_detail values
(1,1,3),(1,3,7),(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order

select o.o1_id, o.o1_date, p.p_price
from orders o
join order_detail ode on o.o1_id = ode.o1_id
join product p on ode.p_id = p.p_id;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách

select c.c_name, p.p_name, p.p_price
from customer c
join orders o on c.c_id= o.c_id
join order_detail ode on o.o1_id = ode.o1_id
join product p on ode.p_id = p.p_id;


-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào

select c.c_name
from customer c
left join orders  on c.c_id= o.c_id
where o.o1_id is null;


-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. 
-- Giá bán của từng loại được tính = odQTY*pPrice) 

 select o.o1_id, o.o1_date, sum( ode.od_qty * p.p_price ) as tong_gia
 from orders o
 join order_detail ode on o.o1_id = ode.o1_id
 join product p on ode.p_id = p.p_id
 group by o.o1_id;



