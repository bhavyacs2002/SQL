CREATE DATABASE Rto;
CREATE TABLE LLR_info (LLR_id INT PRIMARY KEY,first_name VARCHAR(20),last_name VARCHAR(20),birth_date DATE,
    salary INT,is_active BOOLEAN,address VARCHAR(20),created_at TIMESTAMP,gender VARCHAR(20),rating INT);

INSERT INTO LLR_info VALUES(1,'John','Doe','1985-02-15',55000,TRUE,'123 Elm St',now(),'Male',4);
INSERT INTO LLR_info VALUES(2,'Jane', 'Smith', '1990-07-22', 60000, TRUE, '456 Oak St',now(), 'Female', 5);
INSERT INTO LLR_info VALUES(3,'Alice', 'Johnson', '1982-10-05', 62000, FALSE, '789 Pine St',now(), 'Female', 3);
INSERT INTO LLR_info VALUES(4,'Bob', 'Brown', '1978-03-12', 70000, TRUE, '321 Maple St',now(), 'Male',4);
INSERT INTO LLR_info VALUES(5,'Charlie', 'Davis', '1995-11-30', 50000, TRUE, '654 Cedar St',now(), 'Male',2);
INSERT INTO LLR_info VALUES(6,'Emily', 'Wilson', '1988-04-25', 65000,TRUE,'987 Birch St',now(), 'Female',5);
INSERT INTO LLR_info VALUES(7,'David','Miller', '1992-01-18', 48000,TRUE,'159 Spruce St',now(), 'Male', 4);
INSERT INTO LLR_info VALUES(8,'Sophia','Garcia', '1980-12-12', 55000,FALSE,'753 Willow St',now(), 'Female',3);
INSERT INTO LLR_info VALUES(9,'Michael','Martinez', '1987-08-08', 70000,TRUE,'864 Fir St',now(), 'Male',5);
INSERT INTO LLR_info VALUES(10,'Olivia','Rodriguez', '1993-09-21', 57000, TRUE,'951 Elm St',now(), 'Female',4);
INSERT INTO LLR_info VALUES(11,'James','Hernandez', '1984-06-30', 65000, FALSE,'258 Oak St',now(), 'Male',3);
INSERT INTO LLR_info VALUES(12,'Ava','Lopez', '1991-05-15', 54000, TRUE,'369 Pine St',now(), 'Female', 5);
INSERT INTO LLR_info VALUES(13,'William','Gonzalez', '1986-02-20', 58000, TRUE,'147 Maple St',now(), 'Male', 4);
INSERT INTO LLR_info VALUES(14,'Isabella','Wilson', '1994-10-05', 49000, TRUE,'258 Cedar St',now(), 'Female', 3);
INSERT INTO LLR_info VALUES(15,'Lucas','Anderson', '1983-07-14', 70000, TRUE,'369 Birch St',now(), 'Male', 5);
INSERT INTO LLR_info VALUES(16,'Mia','Thomas', '1989-11-11', 62000, TRUE,'951 Spruce St',now(), 'Female', 4);
INSERT INTO LLR_info VALUES(17,'Ethan','Jackson', '1990-03-05', 51000, TRUE, '753 Elm St',now(), 'Male', 3);
INSERT INTO LLR_info VALUES(18,'Charlotte','White', '1982-12-25', 68000, TRUE, '159 Oak St',now(), 'Female', 5);
INSERT INTO LLR_info VALUES(19,'Liam','Harris', '1985-06-17', 53000, TRUE, '864 Cedar St',now(), 'Male', 4);
INSERT INTO LLR_info VALUES(20,'Amelia','Clark', '1992-04-10', 59000, FALSE, '321 Birch St',now(), 'Female', 3);
select * from LLR_info;
INSERT INTO LLR_info (LLR_id,first_name)values (1,'John')on duplicate key update first_name='bhavya';
INSERT INTO LLR_info(LLR_id,first_name)values (1,'marry')on duplicate key update first_name='bhavya';
REPLACE INTO LLR_info(LLR_id,first_name,last_name,birth_date,salary,is_active,address,created_at,gender,rating)
values(22,'liam','harries','1984-07-20',67000,true,'bangalore',now(),'Female',3);
REPLACE INTO LLR_info(LLR_id,first_name,last_name,birth_date,salary,is_active,address,created_at,gender,rating)
values(2,'liam','harries','1984-07-20',67000,true,'bangalore',now(),'Female',3);

CREATE TABLE LLR_TEST_INFO (test_id INT PRIMARY KEY,ll_id INT,test_name VARCHAR(100),test_date DATE,result VARCHAR(20),
    duration INT,created_at TIMESTAMP,test_type VARCHAR(50),status VARCHAR(20),modified_at TIMESTAMP,
    FOREIGN KEY (ll_id) REFERENCES LLR_info(LLR_id));
    
INSERT INTO LLR_TEST_INFO VALUES(11, 1, 'Written Exam', '2024-07-01', 'Pass', 60, NOW(), 'Theory', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(12, 2, 'Road Test', '2024-07-02', 'Pass', 45, NOW(), 'Practical', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(13, 3, 'Vision Test', '2024-07-03', 'Pass', 15, NOW(), 'Medical', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(14, 4, 'Written Exam', '2024-07-04', 'Fail', 60, NOW(), 'Theory', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(15, 5, 'Road Test', '2024-07-05', 'Pass', 45, NOW(), 'Practical', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(16, 6, 'Vision Test', '2024-07-06', 'Pass', 15, NOW(), 'Medical', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(17, 7, 'Written Exam', '2024-07-07', 'Pass', 60, NOW(), 'Theory', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(18, 8, 'Road Test', '2024-07-08', 'Fail', 45, NOW(), 'Practical', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(19, 9, 'Vision Test', '2024-07-09', 'Pass', 15, NOW(), 'Medical', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(20, 10, 'Written Exam', '2024-07-10', 'Pass', 60, NOW(), 'Theory', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(21, 11, 'Road Test', '2024-07-11', 'Pass', 45, NOW(), 'Practical', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(22, 12, 'Vision Test', '2024-07-12', 'Pass', 15, NOW(), 'Medical', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(23, 13, 'Written Exam', '2024-07-13', 'Fail', 60, NOW(), 'Theory', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(24, 14, 'Road Test', '2024-07-14', 'Pass', 45, NOW(), 'Practical', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(25, 15, 'Vision Test', '2024-07-15', 'Pass', 15, NOW(), 'Medical', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(26, 16, 'Written Exam', '2024-07-16', 'Pass', 60, NOW(), 'Theory', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(27, 17, 'Road Test', '2024-07-17', 'Fail', 45, NOW(), 'Practical', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(28, 18, 'Vision Test', '2024-07-18', 'Pass', 15, NOW(), 'Medical', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(29, 19, 'Written Exam', '2024-07-19', 'Pass', 60, NOW(), 'Theory', 'Completed', NOW());
INSERT INTO LLR_TEST_INFO VALUES(30, 20, 'Road Test', '2024-07-20', 'Pass', 45, NOW(), 'Practical', 'Completed', NOW());
SELECT * FROM LLR_TEST_INFO;
INSERT INTO LLR_TEST_INFO(test_id,ll_id)values(12,2)on duplicate key update ll_id=5; 
REPLACE INTO LLR_TEST_INFO(test_id,ll_id,result,status)VALUES(11,'2','fail','not completed');
    
CREATE TABLE driving_license_info (dk_id INT PRIMARY KEY,test_id INT,llr_id INT,license_number VARCHAR(20),issue_date DATE,
    expiration_date DATE,license_class VARCHAR(10),issued_by VARCHAR(100),status VARCHAR(20),created_by VARCHAR(20),
    FOREIGN KEY (test_id) REFERENCES LLR_TEST_INFO(test_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (llr_id) REFERENCES LLR_info(LLR_id)ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO driving_license_info VALUES(31,11,1, 'DL123456789', '2024-08-01', '2029-08-01', 'Private', 'RTO Mumbai', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(32,12,2, 'DL987654321', '2024-08-02', '2029-08-02', 'Commercial', 'RTO Delhi', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(33,13,3, 'DL112233445', '2024-08-03', '2029-08-03', 'Motorcycle', 'RTO Bangalore', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(34,14,4, 'DL998877665', '2024-08-04', '2029-08-04', 'Private', 'RTO Chennai', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(35,15,5, 'DL556677889', '2024-08-05', '2029-08-05', 'Commercial', 'RTO Hyderabad', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(36,16,6, 'DL443322110', '2024-08-06', '2029-08-06', 'Motorcycle', 'RTO Pune', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(37,17,7, 'DL665544332', '2024-08-07', '2029-08-07', 'Private', 'RTO Ahmedabad', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(38,18,8, 'DL221100443', '2024-08-08', '2029-08-08', 'Commercial', 'RTO Kolkata', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(39,19,9, 'DL330044221', '2024-08-09', '2029-08-09', 'Motorcycle', 'RTO Surat', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(40,20,10, 'DL887766554', '2024-08-10', '2029-08-10', 'Private', 'RTO Jaipur', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(41,21,11, 'DL998800776', '2024-08-11', '2029-08-11', 'Commercial', 'RTO Lucknow', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(42,22,12, 'DL554433221', '2024-08-12', '2029-08-12', 'Motorcycle', 'RTO Bhopal', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(43,23,13, 'DL665577889', '2024-08-13', '2029-08-13', 'Private', 'RTO Indore', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(44,24,14, 'DL221100554', '2024-08-14', '2029-08-14', 'Commercial', 'RTO Chandigarh', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(45,25,15, 'DL330022110', '2024-08-15', '2029-08-15', 'Motorcycle', 'RTO Coimbatore', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(46,26,16, 'DL887744332', '2024-08-16', '2029-08-16', 'Private', 'RTO Nagpur', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(47,27,17, 'DL998877554', '2024-08-17', '2029-08-17', 'Commercial', 'RTO Patna', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(48,28,18, 'DL554411223', '2024-08-18', '2029-08-18', 'Motorcycle', 'RTO Vadodara', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(49,29,19, 'DL665588776', '2024-08-19', '2029-08-19', 'Private', 'RTO Visakhapatnam', 'Active', 'AdminUser');
INSERT INTO driving_license_info VALUES(50,30,20, 'DL221122334', '2024-08-20', '2029-08-20', 'Commercial', 'RTO Kochi', 'Active', 'AdminUser');
select * from driving_license_info;
INSERT INTO driving_license_info(dk_id,llr_id)values(41,5)on duplicate key update llr_id=5;
REPLACE INTO driving_license_info(dk_id,llr_id)VALUES(33,14);
    
CREATE TABLE driving_license_test_info (test_info_id INT PRIMARY KEY,dl_id INT,test_date DATE,test_result VARCHAR(50),
    examiner_name VARCHAR(100),test_location VARCHAR(100),duration INT,test_time TIMESTAMP,score INT,feedback VARCHAR(20),
    FOREIGN KEY (dl_id) REFERENCES driving_license_info(dk_id)ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO driving_license_test_info VALUES(101, 31, '2024-08-10', 'Passed', 'Ravi','Test Center Mumbai',45, '2024-08-10 09:30:00', 85, 'Good');
INSERT INTO driving_license_test_info VALUES(102, 32, '2024-08-11', 'Passed', 'Anjali','Test Center Delhi', 60, '2024-08-11 10:00:00', 90, 'Excellent');
INSERT INTO driving_license_test_info VALUES(103, 33, '2024-08-12', 'Failed', 'Rajesh','Test Center Bangalore', 30, '2024-08-12 11:15:00', 45, 'Needs Improvement');
INSERT INTO driving_license_test_info VALUES(104, 34, '2024-08-13', 'Passed', 'Sunita','Test Center Chennai', 50, '2024-08-13 12:00:00', 88, 'Very Good');
INSERT INTO driving_license_test_info VALUES(105, 35, '2024-08-14', 'Failed', 'Manoj','Test Center Hyderabad', 40, '2024-08-14 13:30:00', 50, 'Average');
INSERT INTO driving_license_test_info VALUES(106, 36, '2024-08-15', 'Passed', 'Priya','Test Center Pune', 55, '2024-08-15 14:45:00', 92, 'Excellent');
INSERT INTO driving_license_test_info VALUES(107, 37, '2024-08-16', 'Passed', 'Suresh','Test Center Ahmedabad', 35, '2024-08-16 09:15:00', 78, 'Good');
INSERT INTO driving_license_test_info VALUES(108, 38, '2024-08-17', 'Failed', 'Nisha','Test Center Kolkata', 45, '2024-08-17 10:30:00', 40, 'Needs Improvement');
INSERT INTO driving_license_test_info VALUES(109, 39, '2024-08-18', 'Passed', 'Deepak','Test Center Surat', 60, '2024-08-18 11:45:00', 87, 'Very Good');
INSERT INTO driving_license_test_info VALUES(110, 40, '2024-08-19', 'Passed', 'Ritika','Test Center Jaipur', 50, '2024-08-19 12:30:00', 82, 'Good');
INSERT INTO driving_license_test_info VALUES(111, 41, '2024-08-20', 'Failed', 'Vijay','Test Center Lucknow', 30, '2024-08-20 13:00:00', 35, 'Needs Improvement');
INSERT INTO driving_license_test_info VALUES(112, 42, '2024-08-21', 'Passed', 'Amitabh','Test Center Bhopal', 45, '2024-08-21 14:15:00', 89, 'Very Good');
INSERT INTO driving_license_test_info VALUES(113, 43, '2024-08-22', 'Failed', 'Pooja','Test Center Indore', 40, '2024-08-22 15:30:00', 55, 'Average');
INSERT INTO driving_license_test_info VALUES(114, 44, '2024-08-23', 'Passed', 'Harsh','Test Center Chandigarh', 60, '2024-08-23 09:00:00', 91, 'Excellent');
INSERT INTO driving_license_test_info VALUES(115, 45, '2024-08-24', 'Passed', 'Kiran','Test Center Coimbatore', 35, '2024-08-24 10:15:00', 80, 'Good');
INSERT INTO driving_license_test_info VALUES(116, 46, '2024-08-25', 'Passed', 'Sneha','Test Center Nagpur', 50, '2024-08-25 11:00:00', 86, 'Very Good');
INSERT INTO driving_license_test_info VALUES(117, 47, '2024-08-26', 'Failed', 'Vikas','Test Center Patna', 30, '2024-08-26 12:45:00', 42, 'Needs Improvement');
INSERT INTO driving_license_test_info VALUES(118, 48, '2024-08-27', 'Passed', 'Neha','Test Center Vadodara', 55, '2024-08-27 13:15:00', 84, 'Good');
INSERT INTO driving_license_test_info VALUES(119, 49, '2024-08-28', 'Failed', 'Rohan','Test Center Visakhapatnam', 40, '2024-08-28 14:00:00', 50, 'Average');
INSERT INTO driving_license_test_info VALUES(120, 50, '2024-08-29', 'Passed', 'Shalini','Test Center Kochi', 60, '2024-08-29 09:45:00', 93, 'Excellent');
SELECT * FROM driving_license_test_info;
INSERT INTO driving_license_test_info(test_info_id,duration)values(101,60)on duplicate key update dl_id=32;
REPLACE INTO driving_license_test_info(test_info_id,duration)VALUES(106,38);
