drop table branch;
create table branch(id int primary key auto_increment,
     branch_no varchar(4) not null,
     street text not null,
     city text not null,
     postcode varchar(7) not null
     );