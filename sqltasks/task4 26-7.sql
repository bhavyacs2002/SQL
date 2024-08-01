CREATE DATABASE XWORKZ;
CREATE TABLE hospital(h_id int PRIMARY KEY,h_name VARCHAR(20) UNIQUE,h_location VARCHAR(20),doctor_name VARCHAR(20),doctor_id INT CHECK(doctor_id>300),no_of_wards INT );
ALTER TABLE hospital ADD CONSTRAINT no_of_wards_chk CHECK(no_of_wards>10);
ALTER TABLE hospital DROP CONSTRAINT h_name;
INSERT into hospital VALUES(1,'Ramayaih','Bangalore','Hari',301,20);
INSERT into hospital VALUES(2,'Ravi','Kolar','Ravi Kumar',302,25);
INSERT into hospital VALUES(3,'Jalappa','Kolar','Ram',303,50);
INSERT into hospital VALUES(4,'Gokul','KGF','Ragu',304,20);
INSERT into hospital VALUES(5,'Nimans','Bangalore','John',305,30);
SELECT * FROM hospital;
ALTER TABLE hospital MODIFY h_location VARCHAR(20) NOT NULL;
ALTER TABLE hospital DROP PRIMARY KEY;

CREATE TABLE football(f_id int PRIMARY KEY,f_team VARCHAR(20) UNIQUE,f_captain VARCHAR(20),f_location VARCHAR(20),no_of_players INT CHECK(no_of_players>11));
ALTER TABLE football DROP CONSTRAINT f_team;
ALTER TABLE football ADD constraint f_captain_uni UNIQUE(f_captain);
INSERT into football VALUES(101,'BFC','chaudry','Bangalore',12);
INSERT into football VALUES(102,'PFC','ronaldo','portugal',12);
INSERT into football VALUES(103,'AFC','Messi','Argentina',12);
INSERT into football VALUES(104,'CFC','miKal','Chennai',12);
INSERT into football VALUES(105,'FFC','Heer','France',12);
ALTER TABLE football ADD CONSTRAINT f_team_uni UNIQUE(f_team);
ALTER TABLE football DROP PRIMARY KEY;
SELECT * FROM football;

CREATE TABLE employe_details(e_id INT UNIQUE,e_name VARCHAR(20),e_contact_no BIGINT CHECK(e_contact_no>1000000),department_id INT NOT NULL,department_name VARCHAR(20));
ALTER TABLE employe_details ADD CONSTRAINT e_name_ch CHECK(e_id>0);
ALTER TABLE employe_details MODIFY e_id INT NOT NULL;
SELECT * FROM employe_details;
DESC employe_details;
INSERT INTO employe_details VALUES(101,'bhavya',6362411289,201,'project');
INSERT INTO employe_details VALUES(102,'bhanu',6362481289,202,'management');
INSERT INTO employe_details VALUES(103,'komala',7862411289,203,'testing');
INSERT INTO employe_details VALUES(104,'siddapa',6363311289,204,'development');
INSERT INTO employe_details VALUES(105,'vasu',9862411289,205,'integration');
ALTER TABLE employe_details ADD CONSTRAINT e_name_nn UNIQUE(e_name);
ALTER TABLE employe_details DROP INDEX e_id;

CREATE TABLE item(i_id INT  PRIMARY KEY,item_name VARCHAR(20),item_price INT NOT NULL,item_manufacture_date INT,no_of_items INT CHECK(no_of_items>10));
ALTER TABLE item MODIFY COLUMN item_price INT NULL;
ALTER TABLE item DROP PRIMARY KEY;
INSERT INTO item VALUES(101,'sampoo',20,2012,12);
INSERT INTO item VALUES(102,'soap',45,2024,15);
INSERT INTO item VALUES(103,'Brush',25,2023,20);
INSERT INTO item VALUES(104,'bangle',20,2020,30);
INSERT INTO item VALUES(105,'Ring',28,2021,60);
ALTER TABLE item MODIFY COLUMN item_price INT NOT NULL;
ALTER TABLE item ADD CONSTRAINT item_name_uni UNIQUE(item_name);
ALTER TABLE item DROP INDEX item_name_uni;
SELECT * FROM item;
ALTER TABLE item ADD CONSTRAINT item_manufacture_date PRIMARY KEY(item_manufacture_date);
DELETE FROM item  where i_id=101;

show table status;

create table order_info(id int,order_name varchar(20),cost int,order_id int,created_at timestamp, 
created_by varchar(20),modified_at timestamp,modified_by varchar(20),primary key(order_id));
insert into order_info values(1,'chocolates',250,101,now(),'bhavya',now(),'bhanu'); 
insert into order_info values(2,'Biscuits',100,102,now(),'bhanu',now(),'bhavya'); 
insert into order_info values(3,'cake',250,103,now(),'komala',now(),'siddu'); 

create table payment(id int,price int,payment_id int,order_id int,payment_status varchar(20),created_at timestamp, 
created_by varchar(20),modified_at timestamp,modified_by varchar(20),primary key(payment_id),
foreign key(order_id)references order_info(order_id)on delete cascade on update cascade);
insert into payment values(201,150,2001,101,'success',now(),'sandhya',now(),'akil');
insert into payment values(202,100,2002,101,'failure',now(),'bhavya',now(),'arish');
insert into payment values(203,250,2003,102,'success',now(),'sandhya',now(),'anand');

create table restaurant(id int,restaurant_name varchar(20),restaurant_id int,location varchar(20),order_id int,
ratings int,payment_id int,created_at timestamp, created_by varchar(20),modified_at timestamp,modified_by varchar(20),
primary key(restaurant_id),foreign key(order_id)references order_info(order_id)on delete cascade on update cascade,
foreign key(payment_id)references payment(payment_id)on delete cascade on update cascade);
insert into restaurant values(301,'udupi',3001,'bangalore',102,4,2001,now(),'bhavya',now(),'bhanu');
insert into restaurant values(302,'rameshwara',3002,'vv puram',101,5,2002,now(),'sanju',now(),'sanvi');
insert into restaurant values(303,'udupi',3003,'bangalore',103,4,2003,now(),'bhavya',now(),'bhanu');

create table delivery(id int,person_name varchar(20),mode_of_payment enum('online','offline'),restaurant_id int,
order_id int,created_at timestamp, created_by varchar(20),modified_at timestamp,modified_by varchar(20),
foreign key(restaurant_id)references restaurant(restaurant_id)on delete cascade on update cascade,
foreign key(order_id)references order_info(order_id)on delete cascade on update cascade);
insert into delivery values(31,'bhavya','online',3002,103,now(),'janvi',now(),'kushi');
insert into delivery values(32,'sandhya',1,3002,103,now(),'janvi',now(),'kushi');
insert into delivery values(33,'kushi','offline',3003,101,now(),'janvi',now(),'kushi');