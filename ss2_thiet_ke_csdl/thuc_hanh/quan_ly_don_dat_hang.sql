create database quan_ly_don_dat_hang;
use quan_ly_don_dat_hang;
create table don_vi_dat_hang(
	ma_DV int primary key,
    ten_DV varchar(255),
    dia_chi varchar(255),
    dien_thoai varchar(12)
);
create table don_vi_khach_hang(
	ma_DV int primary key,
    ten_DV varchar(255),
    dia_chi varchar(255)
);

create table hang(
	ma_hang int primary key,
    ten_hang varchar(255),
    don_vi_tinh varchar(255),
    mo_ta_hang varchar(255)
    );
    alter table hang 
    add ma_so_nguoi_dat int,
    add constraint foreign key (ma_so_nguoi_dat) references nguoi_dat(ma_so_nguoi_dat);

create table nguoi_dat(
	ma_so_nguoi_dat int primary key,
    ho_ten_nguoi_dat varchar(255),
    ma_so_Don_vi int,
    Foreign key(ma_so_Don_vi) references don_vi_dat_hang(ma_DV)
)    ;
create table noi_giao(

	ma_so_don_dat_hang int primary key,
    ten_noi_giao varchar(255)
);
create table nguoi_nhan(
	ma_so_nguoi_nhan int primary key,
    ho_ten_nguoi_nhan varchar(255)
);
alter table nguoi_nhan
add ma_DV int,
add constraint foreign key (ma_DV) references don_vi_khach_hang(ma_DV);
create table nguoi_giao(
	ma_so_nguoi_giao int primary key,
    ho_ten_nguoi_giao varchar(255)
)