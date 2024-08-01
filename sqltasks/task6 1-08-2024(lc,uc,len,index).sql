create table company_info(c_id int primary key,c_name varchar(20)not null,no_of_vehicles int check(no_of_vehicles>20),
c_owner_name varchar(20) unique,c_location varchar(20));
create table vehicle_info(id int primary key,v_name varchar(20) unique,v_owner varchar(20)not null,v_price int check(v_price>10000),
com_id int,foreign key(com_id)references company_info(c_id)on delete cascade on update cascade);
insert into company_info values(1,'bhavya',25,'micle','bangalore');
insert into company_info values(2,'heer',35,'john','kolar');
insert into company_info values(3,'nisha',30,'jonson','chennai');
insert into company_info values(4,'sidarth',25,'bhanu','mangalore');
insert into company_info values(5,'mary',50,'kushi','kerala');
insert into company_info values(6,'joseph',56,'ravi','hyderabad');
insert into company_info values(7,'guru',43,'gagan','bombay');
insert into company_info values(8,'goutham',29,'samantha','mumbai');
insert into company_info values(9,'akhil',25,'gokul','kashmir');
insert into company_info values(10,'anand',60,'ram','kanyakumari');

select * from company_info where c_id between 6 and 10;
select * from company_info  where c_name like 'a%';
select * from company_info order by c_id desc; 
select lower(c_owner_name) as owner from company_info;
select upper(c_owner_name) as owner from company_info;
select concat(no_of_vehicles,c_location) as concate_vehicle from company_info;
select length(c_location),c_location as location_length from company_info;
create index c_name_index on company_info(c_name);
show index from company_info;
explain select * from company_info where c_location='bangalore';

insert into vehicle_info values(11,'car kia','bhanu',900000000,5);
insert into vehicle_info values(12,'bike honda','ravi',800000000,1);
insert into vehicle_info values(13,'car renault','tina',500000000,4);
insert into vehicle_info values(14,'car BMW','rahul',400000000,6);
insert into vehicle_info values(15,'bike FZ','anjali',800000000,2);
insert into vehicle_info values(16,'car fortuner','ram',950000000,9);
insert into vehicle_info values(17,'bike Royal enfield','akash',930000000,7);
insert into vehicle_info values(18,'car ferari','ragu',870000000,5);
insert into vehicle_info values(19,'car benz','anand',550000000,1);
insert into vehicle_info values(20,'car jaguar','ramesh',900000000,3);

select * from vehicle_info where com_id between 6 and 8;
select * from vehicle_info  where v_name like 'c%a';
select * from vehicle_info order by com_id ; 
select lower(v_name) as owner from vehicle_info;
select upper(v_name) as owner from vehicle_info;
select concat(id,v_name) as concate_vehicle from vehicle_info;
select length(v_name),v_name as vehicle_length from vehicle_info;
create index v_price_index on vehicle_info(v_price);
show index from vehicle_info;
explain select * from vehicle_info where com_id=6;

