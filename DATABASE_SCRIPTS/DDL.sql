DROP DATABASE IF EXISTS pp;
CREATE DATABASE pp;  # This is my main database
USE pp;


DROP TABLE IF EXISTS Trainer;
CREATE TABLE Trainer
(
	trainerId char(50) primary key,
    trainerName varchar(30) not null,
    track varchar(20),
    qualification varchar(20),
    experience varchar(40)
); 

DROP TABLE IF EXISTS Associate;
CREATE TABLE Associate
(
	#ID INT AUTO_INCREMENT,
	traineeName varchar(30) not null,
    traineeId int(50) AUTO_INCREMENT primary key,
    track varchar(20),
    qualification varchar(20),
    experience varchar(40),
    trainerId char(50) not null,
    FOREIGN KEY (trainerId) REFERENCES Trainer(trainerId)
); 

DROP TABLE IF EXISTS Batch;
CREATE TABLE Batch
(
	topicName varchar(20) not null,
    trainerId char(50),
    traineeId int(50),
    startDate date not null,
    endDate date not null,
    FOREIGN KEY (trainerId) REFERENCES Trainer(trainerId),
    FOREIGN KEY (traineeId) REFERENCES Associate(traineeId)
    
);



DROP TABLE IF EXISTS QuestionManagement;
CREATE TABLE QuestionManagement
(
	question_id char(50) primary key,
    question_section enum('INSTRUCTOR',
	'COURSE MATERIAL',
	'LEARNING EFFECTIVENESS',
	'ENVIRONMENT',
	'JOB IMPACT'),
    question_text varchar(100)
    
);


DROP TABLE IF EXISTS Feedback;
CREATE TABLE Feedback
(
	trainerId char(50),
    traineeId int(50),
	question_id char(50) not null,
    rating ENUM('1','2','3','4','5'),
    FOREIGN KEY (question_id) REFERENCES Question(question_id),
    FOREIGN KEY (trainerId,traineeId) REFERENCES Batch(trainerId,traineeId)
);
drop table  if exists user;
use pp;

create table User(
username varchar(50),
password varchar (50),
role varchar(50)
);

insert into user values
('kunal','k@123','Admin');