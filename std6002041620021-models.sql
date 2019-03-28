show databases;
use std6002041620021;
show tables;

#private_owner
create table private_owner(id int primary key auto_increment,
     owner_no varchar(4) not null,
     first_name varchar(300) not null,
     last_name varchar(300) not null,
     address text,
     telephone varchar(11) not null
     );

#property_for_rent
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

#registration
create table registration(id int primary key auto_increment,
     client_no varchar(4) not null,
     branch_no varchar(4) not null,
     staff_no varchar(4),
     date_joined date not null
     );

#client
create table client(id int primary key auto_increment,
     client_no varchar(4) not null,
     first_name varchar(300) not null,
     last_name varchar(300) not null,
     telephone varchar(11) not null,
     pref_type varchar(5) not null,
     max_rent int not null
     );

#viewing
create table viewing(id int primary key auto_increment,
     client_no varchar(4) not null,
     property_no varchar(4) not null,
     view_date date not null,
     comment text
     );

#staff
create table staff(id int primary key auto_increment,
     staff_no varchar(4),
     first_name varchar(300) not null,
     last_name varchar(300) not null,
     position varchar(11) not null,
     sex varchar(1) not null,
     dob date not null,
     salary int not null,
     branch_no varchar(4) not null
     );

#branch
create table branch(id int primary key auto_increment,
     branch_no varchar(4) not null,
     street text not null,
     city text not null,
     postcode varchar(7) not null
     );
