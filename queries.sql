

use AdventureWorksDW2016

select top 10
EmployeeKey,
FirstName,
LastName,
Title,EmailAddress, Phone, Gender, StartDate, EndDate, DepartmentName
 into ##tblEmp
from DimEmployee
--where LastName = 'Adams'

select * from ##tblEmp


--use AdventureWorks2016

--select * from 


--use AdventureWorks2016

--select * from HumanResources.Employee




use NugDB

select * from [NugDB].[dbo].[DimEmployee]


--create table dbo.EmployeeSrc As (select * from [NugDB].[dbo].[DimEmployee]);





-------------------- creating a table from another table like a duplicate ---------------------------

select * into [dbo].[EmployeeSrc] from [dbo].[DimEmployee]
------------------------------------------------------------------------------------------------------------



select * from DimEmployee

alter table DimEmployee
add EmployeeKey int identity(1,1)

--truncate table EmployeeSrc

select * from EmployeeSrc

--Insert into EmployeeSrc values('Kevin', 'Brown', 'Marketing Assistant', 'kevin0@adventure-works.com', '150-555-0189', 'M', '2006-08-26', Null, 'Marketing')

--Insert into EmployeeSrc values('David', 'Bradley', 'Marketing Manager', 'david0@adventure-works.com', '913-555-0172', 'M', '2007-07-20', '2009-02-11', 'Marketing')
Insert into EmployeeSrc values('Kevin', 'Owens', 'Production Manager', 'adam11@adventure-works.com', '307-865-0199', 'M', 'Production')

--alter table [NugDB].[dbo].[DimEmployee]
--drop column EmployeeKey



--alter table EmployeeSrc
--drop column StartDate, EndDate


select * from DimEmployee
order by EmployeeKey asc

select * from EmployeeSrc



update EmployeeSrc
set Phone = '000-000-0000'
where 
FirstName = 'Kevin'
and
LastName = 'Owens'



update EmployeeSrc
set Phone = '555-555-5555'
where 
FirstName = 'Kevin'
and
LastName = 'Owens'





update DimEmployee
set EndDate = GETDATE()
where
FirstName = ?
and LastName = ?
and
EndDate is Null



-------------------- Incremental Load SC2 using Merge Query -----------------------------------

select *, '1' as DimRec from DimEmployee
where 
EndDate is null

Order by FirstName, LastName






