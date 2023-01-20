USE pp;
#DELETE FROM trainer;

INSERT INTO  trainer 
VALUES 
('A001','GD','Java Fullstack','ME','1 Year'),
('A002','Gopika','Dot Net','BE','1 Year'),
('A003','Sathya','Java Fullstack','MSC','1 Year'),
('A004','JK','QA','ME','1 Year'),
('A005','MD','Java Fullstack','BE','1 Year')
;
#select * from trainer;

#DELETE FROM Associate;

INSERT INTO  Associate 
(traineeName,traineeId,track,qualification,experience,trainerId)
VALUES 
('GD',0,'Java Fullstack','ME','1 Year','A005'),
('Gopika',NULL,'Dot Net','BE','1 Year','A005'),
('Sathya',NULL,'Java Fullstack','MSC','1 Year','A005'),
('JK',NULL,'QA','ME','1 Year','A005'),
('MD',NULL,'Java Fullstack','BE','1 Year','A005')
;

select * from Associate;



#DELETE FROM Batch;

INSERT INTO  Batch 
VALUES 
('Java Fullstack','A005',2,'2017-08-25','2017-10-25'),
('Dot Net','A005',1,'2017-08-25','2017-10-25'),
('Java Fullstack','A005',3,'2017-08-25','2017-10-25'),
('QA','A005',4,'2017-08-25','2017-10-25'),
('Java Fullstack','A005',5,'2017-08-25','2017-10-25')
;

select * from Batch;


INSERT INTO  Question 
VALUES 
('Q1001','Instructor','abcd'),
('Q1002','Environment','efgh'),
('Q1003','Instructor','ieei'),
('Q1004','Environment','iweis'),
('Q1005','Instructor','usds')
;

select * from Question;

INSERT INTO  Feedback 
VALUES 
('A005',1,'Q1002','1'),
('A005',2,'Q1005','2'),
('A005',3,'Q1004','3'),
('A005',4,'Q1001','4'),
('A005',5,'Q1003','5')
;

select * from user;
create table User(
username varchar(10),
password varchar(10),
role varchar(10)
);

insert into user values('kunal','k@123', 'Admin');
truncate table user;
select * from question;
ALTER TABLE question
RENAME TO qusetionmanagement;
drop table if exists questionmanagement;
create table questionManagement(
questionId varchar(10) primary key,
questionSection enum('Instructor','Course Material','Learning Effectiveness','Environment','Job Impact'),
questionText varchar(300)
);

insert into questionManagement values
('Q1','Instructor','How does instructor communicate with the class'),
('Q2','Course Material','Have instructor provided proper course study material'),
('Q3','Learning Effectiveness','Are your all doubts being addressed and solved by the instructor'),
('Q4','Environment','How is the environment of the class'),
('Q5','Job Impact','How did the course help you in your job or project');



truncate table questionManagement;
select * from user;