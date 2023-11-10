create database quan_ly_ban_hang;
use quan_ly_ban_hang;

CREATE table customer(
	cID int primary key,
	cName varchar(255),
	cAge int check (cAge > 0)
);

CREATE TABLE `order` (
    o_id INT,
    c_id INT,
    o_date DATETIME,
    o_total_price DOUBLE,
    FOREIGN KEY (c_id) REFERENCES customer(cID)
);
create table product(
	p_id int primary key,
	p_name varchar(255),
	p_price double
);


CREATE TABLE order_detail (
    o_id INT,
    p_id INT,
    odQTY VARCHAR(255),
    PRIMARY KEY (o_id, p_id)
);

alter table `order`
add constraint primary key (o_id);

ALTER TABLE order_detail
ADD CONSTRAINT FK_o_id FOREIGN KEY (o_id) REFERENCES `order`(o_id);

ALTER TABLE order_detail
ADD CONSTRAINT FK_p_id FOREIGN KEY (p_id) REFERENCES product(p_id);


alter table order_detail add constraint foreign key (p_id) references product(p_id);



