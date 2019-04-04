drop table viewing;
create table viewing(id int primary key auto_increment,
     client_no varchar(4) not null,
     property_no varchar(4) not null,
     view_date date not null,
     comment text
     );
