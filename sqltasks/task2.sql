CREATE TABLE state_information (StateID INT,StateName VARCHAR(20),Capital VARCHAR(20),Population INT,AreaSqMi FLOAT,ChiefMinister VARCHAR(20),Governor VARCHAR(20),
    StatehoodYear INT,StateLang VARCHAR(20),TimeZone INT);
ALTER TABLE state_information ADD COLUMN NoOfDistricts INT,ADD COLUMN OfficialWebsite VARCHAR(100),ADD COLUMN StateDance VARCHAR(20),ADD COLUMN EducationMinister VARCHAR(20),ADD COLUMN GDP INT;
SELECT * FROM state_information;
ALTER TABLE state_information RENAME COLUMN StateID TO state_id,RENAME COLUMN StateName TO state_name,RENAME COLUMN AreaSqMi TO total_area,RENAME COLUMN StatehoodYear TO YearAdmitted,RENAME COLUMN GDP TO state_GDP;
ALTER TABLE state_information MODIFY COLUMN state_id VARCHAR(20),MODIFY COLUMN Population BIGINT,MODIFY COLUMN state_GDP BIGINT,MODIFY COLUMN YearAdmitted BIGINT,MODIFY COLUMN TimeZone VARCHAR(20);
DESC state_information;
INSERT INTO state_information VALUES ('1MH','Maharashtra','Mumbai',123144223,118809,'Eknath Shinde','Ramesh Bais',1960,'Marathi','UTC+05:30',36,'https://www.maharashtra.gov.in', 'Lavani','Deepak Kesarkar',400000);
INSERT INTO state_information VALUES('2TN','Tamil Nadu','Chennai',72147030,50216,'M.K. Stalin', 'R.N. Ravi', 1950, 'Tamil', 'UTC+05:30', 38, 'https://www.tn.gov.in','Bharatanatyam','K. Ponmudy',230000);
INSERT INTO state_information VALUES('3KA','Karnataka','Bengaluru',67562686,74223,'Siddaramaiah', 'Thaawarchand Gehlot',1956,'Kannada','UTC+05:30',31,'https://www.karnataka.gov.in','Yakshagana','M.C. Sudhakar',180000);
INSERT INTO state_information VALUES('4WB','West Bengal','Kolkata',91276115,34267,'Mamata Banerjee','C.V. Ananda Bose',1947,'Bengali','UTC+05:30',23,'https://www.wb.gov.in','Rabindra Nritya','Bratya Basu',170000);
INSERT INTO state_information VALUES('5GT','Gujarat','Gandhinagar',63947896,75686,'Bhupendra Patel','Acharya Devvrat',1960, 'Gujarati','UTC+05:30',33,'https://www.gujarat.gov.in','Garba','Kuberbhai Dindor',180000);
INSERT INTO state_information VALUES('6RJ','Rajasthan','Jaipur', 81032689,132139,'Ashok Gehlot','Kalraj Mishra', 1950,'Hindi','UTC+05:30', 33,'https://www.rajasthan.gov.in','Ghoomar','B.D. Kalla',170000);
INSERT INTO state_information VALUES('7UP','Uttar Pradesh','Lucknow',237882725,93368,'Yogi Adityanath','Anandiben Patel',1950,'Hindi','UTC+05:30',75,'https://www.up.gov.in','Kathak','Yogendra Upadhyay',20000);
INSERT INTO state_information VALUES('8PB','Punjab', 'Chandigarh', 30141373, 19445, 'Bhagwant Mann', 'Banwarilal Purohit', 1950, 'Punjabi', 'UTC+05:30', 22, 'https://www.punjab.gov.in', 'Bhangra', 'Harjot Singh Bains', 170000);
INSERT INTO state_information VALUES('9KL','Kerala', 'Thiruvananthapuram', 35699443, 14886, 'Pinarayi Vijayan', 'Arif Mohammad Khan', 1956, 'Malayalam', 'UTC+05:30', 14, 'https://www.kerala.gov.in', 'Kathakali', 'V. Sivankutty', 140000);
INSERT INTO state_information VALUES('10BR','Bihar', 'Patna', 124799926, 36135, 'Nitish Kumar', 'Rajendra Arlekar', 1950, 'Hindi', 'UTC+05:30', 38, 'https://www.bihar.gov.in', 'Bidesia', 'Chandrashekhar', 120000);
INSERT INTO state_information VALUES('11MP','Madhya Pradesh', 'Bhopal', 85358965, 119014, 'Shivraj Singh Chouhan', 'Mangubhai C. Patel', 1956, 'Hindi', 'UTC+05:30', 52, 'https://www.mp.gov.in', 'Gaur', 'Inder Singh Parmar', 130000);
INSERT INTO state_information VALUES('12OD','Odisha', 'Bhubaneswar', 46356334, 60042, 'Naveen Patnaik', 'Ganeshi Lal', 1950, 'Odia', 'UTC+05:30', 30, 'https://www.odisha.gov.in', 'Odissi', 'Samir Ranjan Dash', 120000);
INSERT INTO state_information VALUES('13HA','Haryana', 'Chandigarh', 28715000, 17270, 'Manohar Lal Khattar', 'Bandaru Dattatreya', 1966, 'Hindi', 'UTC+05:30', 22, 'https://www.haryana.gov.in', 'Phag', 'Kanwar Pal', 90000);
INSERT INTO state_information VALUES('14CH','Chhattisgarh','Raipur', 29436231, 52199, 'Bhupesh Baghel', 'Biswabhusan Harichandan', 2000, 'Hindi', 'UTC+05:30', 28, 'https://www.cgstate.gov.in', 'Panthi', 'Premsai Singh Tekam', 100000);
INSERT INTO state_information VALUES('15JK','Jharkhand','Ranchi', 38593948, 30774, 'Hemant Soren', 'C.P. Radhakrishnan', 2000, 'Hindi', 'UTC+05:30', 24, 'https://www.jharkhand.gov.in', 'Chhau', 'Jagarnath Mahto', 95000);
INSERT INTO state_information VALUES('16AM','Assam','Dispur', 35607039, 30755, 'Himanta Biswa Sarma', 'Ganga Prasad', 1972, 'Assamese', 'UTC+05:30', 35, 'https://www.assam.gov.in', 'Sattriya', 'Ranoj Pegu', 110000);
INSERT INTO state_information VALUES('17TA','Tripura','Agartala',41826509, 10486, 'Manik Saha', 'Satyadev Narayan Arya', 1972, 'Bengali', 'UTC+05:30', 8, 'https://www.tripura.gov.in', 'Manipuri','Ratan Lal Nath', 25000);
INSERT INTO state_information VALUES('18MG','Meghalaya','Shillong',31626807, 22711, 'Conrad Sangma', 'Phagu Chauhan', 1972, 'English', 'UTC+05:30', 11,'https://www.meg.gov.in','Shad Suk Mynsiem','Rohit Ranjan',30000);
INSERT INTO state_information VALUES('19NL','Nagaland','Kohima',2244896, 6396, 'Neiphiu Rio', 'Amit Shah', 1963, 'English', 'UTC+05:30', 12,'https://www.nagaland.gov.in', 'Kuchipudi','Temjen Imna Along',20000);
INSERT INTO state_information VALUES('20SM','Sikkim','Gangtok',610577,2849,'Prem Singh','Laxman Prasad',1975,'Nepali','UTC+05:30', 4,'https://www.sikkim.gov.in','Lepcha','Kunga Nima Lepcha',15000);

UPDATE state_information SET population=3056754 WHERE state_id='8PB';
UPDATE state_information SET Governor='Ravi' WHERE state_id='2TN';
UPDATE state_information SET ChiefMinister='Siddu' WHERE state_id='3KA';
UPDATE state_information SET YearAdmitted=1948 WHERE state_id='4WB';
UPDATE state_information SET StateLang='Gujarathi' WHERE state_id='5GT';
UPDATE state_information SET Capital='Chathisgarh' WHERE state_id='8PB';
UPDATE state_information SET population=123565654 WHERE state_id='10BR';
UPDATE state_information SET Governor='Laxman' WHERE state_id='20SM';
UPDATE state_information SET StateLang='Marati' WHERE state_id='1MH';
UPDATE state_information SET EducationMinister='Sivankutty' WHERE state_id='9KL';

DELETE FROM state_information WHERE state_name='Maharastra';
DELETE FROM state_information WHERE StateLang='Gujarathi';
DELETE FROM state_information WHERE state_id='8PB';

SELECT * FROM state_information WHERE state_id='10BR' AND population=123565654;
SELECT * FROM state_information WHERE state_id='10BR' OR TimeZone='UTC+05:30';
SELECT * FROM state_information WHERE Capital IN('Mumbai','Chennai','Kolkata');
SELECT * FROM state_information WHERE YearAdmitted NOT IN(1960,1948,1950);

CREATE TABLE scam_information (scam_id INT,scam_name VARCHAR(20),description_info VARCHAR(50),amount_lost FLOAT,
    number_of_victims INT,scam_date DATE,scam_type VARCHAR(50),culprit_name VARCHAR(100),culprit_contact BIGINT,culprit_location VARCHAR(100));
ALTER TABLE scam_information ADD COLUMN report_date DATE,ADD COLUMN reporting_agency VARCHAR(100),ADD COLUMN victim_age INT,ADD COLUMN victim_gender VARCHAR(10),ADD COLUMN severity_level INT;
ALTER TABLE scam_information RENAME COLUMN amount_lost TO total_amount_lost,RENAME COLUMN number_of_victims TO no_of_victims,RENAME COLUMN culprit_contact TO culprit_Phno,RENAME COLUMN scam_type TO type_of_scam,RENAME COLUMN scam_date TO date_of_scam;
ALTER TABLE scam_information MODIFY COLUMN total_amount_lost BIGINT,MODIFY COLUMN date_of_scam INT,MODIFY COLUMN report_date INT,MODIFY COLUMN scam_id BIGINT;
SELECT * FROM scam_information;
INSERT INTO scam_information  VALUES(10000000001,'Phishing','Email scam asking for sensitive info',500000,100,20210101,'Online Fraud','John Doe',9876543210,'New York,USA',20210115,'FBI',35,'Male',5);
INSERT INTO scam_information  VALUES(10000000002,'Ponzi Scheme','Investment scam promising high returns',2000000, 500,20201201,'Financial Fraud','Jane Smith',9876543211,'London, UK',20201220,'Interpol', 50, 'Female', 8);
INSERT INTO scam_information  VALUES(10000000003,'Lottery Scam', 'Fake lottery winnings claim', 100000, 300, 20210305,'Prize Scam','Michael Brown',9876543212,'Sydney,Australia',20210320,'Local Police',45, 'Male', 3);
INSERT INTO scam_information  VALUES(10000000004,'Romance Scam', 'Pretending to be a love interest', 750000, 150, 20210410,'Social Engineering', 'Emily White',9876543213, 'Toronto, Canada',20210425, 'FBI', 30, 'Female', 7);
INSERT INTO scam_information  VALUES(10000000005,'Tech Support Scam', 'Fake tech support call', 250000, 200, 20210515, 'Telephone Scam','David Green',9876543214,'San Francisco, USA', 20210530,'FCC', 40, 'Male', 6);
INSERT INTO scam_information  VALUES(10000000006,'Charity Scam', 'Fake charity asking for donations',600000,400,20210620,'Charity Fraud','Sarah Johnson',9876543215,'Berlin, Germany', 20210705, 'Europol', 55, 'Female', 4);
INSERT INTO scam_information  VALUES(10000000007,'Employment Scam', 'Fake job offers asking for fees', 800000, 250, 20210725, 'Job Fraud', 'James Wilson', 9876543216,'Tokyo, Japan', 20210810, 'Local Police', 28, 'Male', 6);
INSERT INTO scam_information  VALUES(10000000008,'Inheritance Scam', 'Claiming unclaimed inheritance', 1500000, 100, 20210830, 'Inheritance Fraud', 'Patricia Martinez',9876543217,'Madrid,Spain',20210915, 'Interpol', 60, 'Female', 9);
INSERT INTO scam_information  VALUES(10000000009,'Bank Loan Scam', 'Fake loan offers', 900000, 350, 20210910, 'Financial Fraud', 'Robert Garcia', 9876543218,'Mumbai, India',20210925, 'RBI', 50, 'Male', 7);
INSERT INTO scam_information  VALUES(10000000010,'Investment Scam', 'High-return investment fraud', 3000000, 600, 20211015, 'Financial Fraud', 'Linda Rodriguez', 9876543219, 'Paris, France', 20211030,'AMF', 45, 'Female', 8);
INSERT INTO scam_information  VALUES(10000000011,'Phishing','Fake website asking for credentials',700000,120,20211005,'Online Fraud','Chris Evans',9876543220,'Los Angeles,USA',20211020,'FBI',29,'Male',5);
INSERT INTO scam_information  VALUES(10000000012,'Ponzi Scheme', 'Real estate investment scam', 2500000, 450,20211101, 'Financial Fraud', 'Emma Watson', 9876543221, 'Manchester, UK', 20211115, 'Scotland Yard', 40, 'Female', 8);
INSERT INTO scam_information  VALUES(10000000013,'Lottery Scam', 'Fake SMS claiming prize', 50000, 180, 20211210,'Prize Scam','Robert Downey', 9876543222, 'Melbourne, Australia', 20211225, 'AFP', 50, 'Male', 3);
INSERT INTO scam_information  VALUES(10000000014,'Romance Scam', 'Fake online dating profile', 650000,170, 20220115,'Social Engineering', 'Scarlett Johansson', 9876543223, 'Vancouver, Canada', 20220130, 'RCMP', 25, 'Female', 7);
INSERT INTO scam_information  VALUES(10000000015,'Tech Support Scam', 'Pop-up claiming virus infection',300000, 210, 20220220, 'Telephone Scam', 'Tom Holland', 9876543224, 'Miami, USA', 20220305, 'FCC', 38, 'Male', 6);
INSERT INTO scam_information  VALUES(10000000016,'Charity Scam', 'Fake disaster relief fund', 800000, 380,20220310,'Charity Fraud','Jennifer Aniston', 9876543225, 'Munich, Germany', 20220325, 'BKA', 60, 'Female', 4);
INSERT INTO scam_information  VALUES(10000000017,'Employment Scam', 'Job offer asking for personal details',750000, 260, 20220415, 'Job Fraud', 'Brad Pitt', 9876543226, 'Seoul, South Korea', 20220430, 'NPA', 32, 'Male', 6);
INSERT INTO scam_information  VALUES(10000000018,'Inheritance Scam', 'Email claiming unclaimed inheritance', 1700000, 110, 20220505, 'Inheritance Fraud', 'Angelina Jolie', 9876543227, 'Rome, Italy', 20220520, 'Interpol', 45, 'Female', 9);
INSERT INTO scam_information  VALUES(10000000019,'Bank Loan Scam', 'Fake pre-approved loan offer', 950000, 340, 20220610, 'Financial Fraud', 'Johnny Depp', 9876543228, 'Delhi, India', 20220625, 'CBI', 55, 'Male', 7);
INSERT INTO scam_information  VALUES(10000000020,'Investment Scam', 'Cryptocurrency investment fraud', 3500000, 650, 20220715, 'Financial Fraud', 'Leonardo DiCaprio', 9876543229, 'Lyon, France', 20220730, 'AMF', 48, 'Male', 8);
SELECT * FROM scam_information;
UPDATE scam_information SET description_info='Email scam asking for sensitive details' WHERE scam_id=10000000001;
UPDATE scam_information SET total_amount_lost=500000 WHERE scam_id=10000000004;
UPDATE scam_information SET no_of_victims=250 WHERE scam_id=10000000008;
UPDATE scam_information SET type_of_scam='Job fraud' WHERE scam_id=10000000019;
UPDATE scam_information SET culprit_name='John' WHERE scam_id=10000000014;
UPDATE scam_information SET culprit_location='bangalore,India' WHERE culprit_Phno=9876543227;
UPDATE scam_information SET victim_age=40 WHERE type_of_scam='Telephone Scame';
UPDATE scam_information SET severity_level=8 WHERE type_of_scam='Social Engineering';
UPDATE scam_information SET victim_gender='Female' WHERE culprit_name='John';
UPDATE scam_information SET report_date=20220325 WHERE reporting_agency='FCC';

DELETE FROM scam_information WHERE type_of_scam='Online Fraud';
DELETE FROM scam_information WHERE scam_name='Romance Scam';
DELETE FROM scam_information WHERE date_of_scam='20210410';

SELECT * FROM scam_information WHERE victim_gender='Female';
SELECT * FROM scam_information WHERE victim_gender='Female' AND victim_age=40;
SELECT * FROM scam_information WHERE victim_gender='Male' OR SCAM_ID=10000000018;
SELECT * FROM scam_information WHERE scam_id IN(10000000001,10000000004,10000000008);
SELECT * FROM scam_information WHERE scam_id NOT IN(10000000014,10000000009,10000000016);




