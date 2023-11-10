CREATE table customer(
	cID int primary key,
	cName varchar(255),
	cAge int check (cAge > 0)
)

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
    PRIMARY KEY (o_id, p_id),
);
alter table order_detail add constraint foreign key (o_id) references `order`(o_id)
alter table order_detail add constraint foreign key (p_id) references product(p_id)



