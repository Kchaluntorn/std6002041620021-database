drop table private_owner;
create table private_owner(id int primary key auto_increment,
     owner_no varchar(4) not null,
     first_name varchar(300) not null,
     last_name varchar(300) not null,
     address text,
     telephone varchar(11) not null
     );