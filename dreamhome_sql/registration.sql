drop table registration;
create table registration(id int primary key auto_increment,
     client_no varchar(4) not null,
     branch_no varchar(4) not null,
     staff_no varchar(4),
     date_joined date not null
     );