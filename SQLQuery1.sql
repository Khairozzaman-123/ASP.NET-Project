use master
go
DROP DATABASE Trainning_CenterDB
GO
CREATE DATABASE Trainning_CenterDB
GO
USE Trainning_CenterDB
GO
Create Table Courses
(
CourseId Int Primary Key,
CourseName Varchar(30) Not Null,
CourseFees money NOT NULL,
StartDate DATE NOT NULL,
EndDate DATE NULL
)
GO
SELECT * FROM Courses
GO

Create Table Batch 
(
bID INT PRIMARY KEY NOT NULL,
bName Varchar(20) NOT NULL,
bperiod VARCHAR (10),
bRound INT NOT NULL
)
GO

Create Table Trainees
(
tID INT PRIMARY KEY not null,
firstName VARCHAR(30) NOT NULL,
lastName VARCHAR(20) NOT NULL,
picture NVARCHAR(150) Null,
tsp CHAR(4),
admission DATETIME NOT NULL,
bID INT REFERENCES Batch(bID) NOT NULL,
birthDate DATETIME,
gender VARCHAR (6),
contactNo VARCHAR(15) NOT NULL,
email VARCHAR(70),

)
GO
SELECT * FROM Trainees
GO
Create Table Teacher
(
teacherID INT PRIMARY KEY not null,
firstName VARCHAR(30) NOT NULL,
lastName VARCHAR(20) NOT NULL,
picture NVARCHAR(150) Null,
tsp CHAR(4),
gender VARCHAR (6),
contactNo VARCHAR(15) NOT NULL,
email VARCHAR(70)
)
GO

Create Table TraineeCourse
(
tID Int Not Null References Trainees(tID),
CourseId Int Not Null References Courses(CourseId),
teacherID INT NOT NULL References Teacher(teacherID)
)
GO
--INSERTING DATA TO  TABLE
SELECT * FROM Courses
GO
INSERT INTO Courses VALUES
(1,'C#',50000,'18/October/2020','18/October/2021'),
(2,'JAVA',40000,'18/October/2020','18/October/2021')
GO

INSERT INTO Batch VALUES
(1,'ESAD','Evening',45),
(2,'CFCS','Morning',44)
GO

INSERT INTO Trainees VALUES
(1259964,'MD.KHAIROZZAMAN','SHAEID','p.jpg','PNTL','18/October/2020',1,'22/December-1993','male','01725348611','shaeidkhan1993@gmail.com')

GO

SELECT * FROM Teacher
GO
INSERT INTO Teacher VALUES
(1,'MD.AZMAN','ALI','pic.jpg','PNTL','MALE','01685497556','azman@gmail.com'),
(2,'ELA','JANNATH','pp.jpg','USSL','FAMALE','01685497555','ela@gmail.com')
GO


INSERT INTO TraineeCourse VALUES
(1259964,1,1)
GO
select * from Trainees
go


