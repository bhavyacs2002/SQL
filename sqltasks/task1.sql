create table movie_info(movie_id int,movie_name varchar(20),movie_hero varchar(20),movie_heroine varchar(20),movie_ticket_price bigint);
alter table movie_info add column movie_producer varchar(20),add column movie_director varchar(20),add column movie_rating int,add column movie_collection bigint,add column isHit boolean;
select * from movie_info;
alter table movie_info rename column movie_rating to movie_ratings,rename column movie_ticket_price to movie_ticket,rename column movie_producer to movie_investor,rename column isHit to isgood,rename column movie_collection to movie_total_collection;
insert into movie_info values(1001,'paramathma' ,'punith','deepthi',150,'yograj bhat','yograj bhat',5,100000000,true);
insert into movie_info values(1002,'KGF' ,'yash','srinidhi',250,'hombale','prasanth',5,100000000,true);
insert into movie_info values(1003,'kanthara' ,'rishab','sapthami',150,'hombale','rishab',5,1000000000,true);
insert into movie_info values(1004,'charlie' ,'rakshith','sangeetha',250,'rishab','kiranraj ',4,200000000,true);
insert into movie_info values(1005,'vikranth rona' ,'sudeep','milana',100,'bhandari','anup',3,150000000,false);
insert into movie_info values(1006,'rangitharanga' ,'nirup','radhika',100,'yograj ','anup',4,100000000,true);
insert into movie_info values(1007,'yajamana' ,'darshan','rashmika',300,'sandhya','hardhik',2,25000000,false);
insert into movie_info values(1008,'toby' ,'rb shetty','chaitra',150,'ravi rai',' basil alchalakki',3,3000000,false);
insert into movie_info values(1009,'anjaniputra' ,'punith','rashmika',250,'ravi shankar','ranjith',1,25000000,false);
insert into movie_info values(1010,'kalki','prabhas','deepika',300,'ravi','nag ashwin',5,770000000,true);

update movie_info set movie_name='ram' where movie_id=1007;
update movie_info set movie_hero='punith' where movie_id=1007;
update movie_info set movie_heroine='priya mani' where movie_id=1007;
update movie_info set movie_ticket=250 where movie_id=1003;
update movie_info set movie_investor='ragu' where movie_id=1009;
update movie_info set movie_director='prasanth neil' where movie_id=1002;
update movie_info set movie_ratings=4 where movie_id=1004;
update movie_info set isgood=true where movie_id=1005;
update movie_info set movie_total_collection=75000000 where movie_id=1010;
update movie_info set isgood=true where movie_id=1008;

delete from movie_info where movie_investor='sandhya';
delete from movie_info where movie_id=1005;
delete from movie_info where movie_director='rishab';
select * from movie_info;
select * from movie_info where movie_id=1006;
select * from movie_info where movie_director='anup' and movie_hero='nirup';
select * from movie_info where movie_id=1005 or movie_ticket=250 ;
select * from movie_info where movie_id in(1001,1002,1003,1004);
select * from movie_info where movie_id not in(1004,1006,1002,1001);

CREATE TABLE bank_details (bank_name varchar(20),account_number bigint,customer_id int,account_type VARCHAR(10),balance int);
alter table bank_details add column phone_number bigint,add column branch_code VARCHAR(10),add column account_holder varchar(20),add column location varchar(20),add column account_status boolean;
select * from bank_details;

insert into bank_details values('State Bank of India', 1000000001, 1, 'Savings', 50000, 9876543210, 'SBI001', 'Rahul','Kolar',TRUE);
insert into bank_details values('ICICI Bank', 1000000002, 2, 'Current', 150000, 9876543211, 'ICICI001', 'Anita','Bangalore',TRUE);
insert into bank_details values('HDFC Bank', 1000000003, 3, 'Savings', 75000, 9876543212, 'HDFC001', 'Suresh','Madderi',FALSE);
insert into bank_details values('Axis Bank', 1000000004, 4, 'Current', 200000, 9876543213, 'AXIS001', 'Priya','Mangalore',TRUE);
insert into bank_details values('Kotak Mahindra Bank', 1000000005, 5, 'Savings', 30000, 9876543214, 'KOTAK001', 'Ravi','Udupi',TRUE);
insert into bank_details values('Syndicate bank', 1000000006, 6, 'Current', 120000, 9876543215, 'S001', 'Geeta','Belgavi',FALSE);
insert into bank_details values('Bank of Baroda', 1000000007, 7, 'Savings', 60000, 9876543216, 'BOB001', 'Amit','Darwad',TRUE);
insert into bank_details values('Canara Bank', 1000000008, 8, 'Current', 80000, 9876543217, 'CANARA001', 'Nisha','Ramnagar',TRUE);
insert into bank_details values('IndusInd Bank', 1000000009, 9, 'Savings', 45000, 9876543218, 'INDUS001', 'Vikas','Kormangala',FALSE);
insert into bank_details values('Yes Bank', 1000000010, 10, 'Current', 110000, 9876543219, 'YES001','Sonia ','Chikballapur',TRUE);

update bank_details set bank_name='SBI' where account_number=1000000001;
update bank_details set customer_id=12 where account_number=1000000002;
update bank_details set account_type='savings' where account_number=1000000004;
update bank_details set balance=800000 where account_number=1000000008;
update bank_details set phone_number=6362411289 where account_number=1000000005;
update bank_details set branch_code='HDFC002' where account_number=1000000003;
update bank_details set account_holder='Bhavya' where account_number=1000000006;
update bank_details set location='Malphe' where account_number=1000000009;
update bank_details set account_status=true where account_number=1000000010;
update bank_details set customer_id=1 where account_number=1000000002;

delete from bank_details where account_number=1000000001;
delete from bank_details where location='Malphe';
delete from bank_details where account_holder='ravi';

select * from bank_details where location='Madderi';
select * from bank_details where location='mangalore' and bank_name='Axis Bank';
select * from bank_details where account_status=true or balance=120000;
select * from bank_details where customer_id in(1,4,6,7);
select * from bank_details where customer_id not in(1,4,6,7);