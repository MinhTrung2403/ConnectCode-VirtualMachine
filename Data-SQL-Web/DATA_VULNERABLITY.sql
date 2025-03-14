CREATE DATABASE SQLVulnerability
ON (
	NAME = 'SQLVulnerability',
	FILENAME = 'D:\CyberSercurity\Source Code\WebVulnerability by JAVA\webvulnerability\Database\SQLVulnerability.mdf',
	SIZE = 10MB,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 5MB)
LOG ON (
	NAME = 'SQLVulnerabilityY',
	FILENAME = 'D:\CyberSercurity\Source Code\WebVulnerability by JAVA\webvulnerability\Database\SQLVulnerability.ldf',
	SIZE = 5MB,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 2MB)
GO

USE SQLVulnerability

CREATE TABLE ACCOUNT (
	Username varchar(50) primary key,
	Email varchar(50),
	Password varchar(50),
	Code int
)

CREATE TABLE ProductQuantity (
	IDProduct varchar(50) primary key,
	ProductName varchar(50),
	Price varchar(50),
	InventoryQuantity int
)

CREATE TABLE ProductDetails (
	productName varchar(50) primary key,
	productDescription nvarchar(50),
	productPrice varchar(50),
	productImage image
)

INSERT INTO ProductDetails(productName,productDescription,productPrice,productImage)
VALUES 
    ('Iphone 15 Pro Max',N'Iphone 15 Pro Max ','50.000.000',NULL),
	('Iphone 14 Pro Max','Iphone 14 Pro Max ','40.000.000',NULL);

INSERT INTO ACCOUNT(Username,Email,Password,code)
VALUES 
    ('MinhTrung','abc@gmail.com','12345678900',NULL),
	('MinhTrung1','abc@gmail.com','123456780',NULL),
	('MinhTrung2','abc@gmail.com','123456900',NULL),
	('MinhTrung3','abc@gmail.com','1234567800',NULL);

INSERT INTO ProductQuantity(IDProduct,ProductName,Price,InventoryQuantity)
VALUES 
    ('Ip12','Iphone 12 Pro Max','13.000.000',40),
	('Ip12-1','Iphone 12 Pro Max (like new)','9.000.000',10),
    ('Ip13','Iphone 13 Pro Max','13.000.000',13),
	('Ip14','Iphone 14 Pro Max','20.000.000',44),
	('Ip15','Iphone 15 Pro Max','30.000.000',25),
	('Ip8plus','Iphone 8 Plus','4.000.000',5);

select * from ProductQuantity where ProductName like 'Iphone 8 plus'



CREATE PROCEDURE GetAccount(
	@Name VARCHAR(max)
)as begin 
	DECLARE @sqlcmd NVARCHAR(MAX);
	SET @sqlcmd  =  'SELECT * FROM ACCOUNT WHERE Username ='''+@Name+''''
	EXECUTE(@sqlcmd)    
end

exec GetAccount 'MinhTrung2'
DROP procedure GetAccount

------

select * from sys.databases




