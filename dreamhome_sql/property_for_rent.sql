drop table property_for_rent;
create table property_for_rent(id int primary key auto_increment,
     property_no varchar(4) not null,
     street text not null,
     city text not null,
     postcode varchar(7) not null,
     type varchar(5) not null,
     rooms varchar(2) not null,
     rent int not null,
     owner_no varchar(4) not null,
     staff_no varchar(4),
     branch_no varchar(4) not null
     );