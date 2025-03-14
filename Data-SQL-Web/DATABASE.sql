CREATE DATABASE DATA_DKDN
ON (
	NAME = 'DATA_DKDN',
	FILENAME = 'D:\CyberSercurity\Source Code\WebVulnerability by JAVA\webvulnerability\Database\DATA_DKDN.mdf',
	SIZE = 10MB,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 5MB)
LOG ON (
	NAME = 'DATA_DANGKI_DANGNHAP',
	FILENAME = 'D:\CyberSercurity\Source Code\WebVulnerability by JAVA\webvulnerability\Database\DATA_DKDN.ldf',
	SIZE = 5MB,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 2MB)
GO

USE DATA_DKDN

CREATE TABLE ACCOUNT(
	Username nvarchar(50),
	Email nvarchar (50),
	Password nvarchar (50),
	Code nchar(10)
)

INSERT INTO ACCOUNT(Username, Email, Password, Code) 
VALUES ('MinhTrung2403', 'nminhtrungg@gmail', '123456', '565748')



