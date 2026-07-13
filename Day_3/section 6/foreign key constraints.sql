create table order_info
(
    order_info_id  integer primary key auto_increment,
    order_id  integer,
    product_id  integer,
    product_quantity  integer,
foreign key(product_id) references products(product_id) on delete cascade
    );