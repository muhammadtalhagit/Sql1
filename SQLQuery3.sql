create database Company;
-- Departments table
CREATE TABLE Departments (
    DepartmentID INT not null unique identity,
    DepartmentName VARCHAR(255) NOT NULL
);

select * from Departments;

INSERT INTO Departments (DepartmentName)VALUES
       ('IT'),
       ('Human Resources'),
       ('Marketing'),
       ('Engineering'),
       ('Sales');


-- Employees table

create table Employees(
EmployeesID int not null unique identity,
Firstname varchar(255) not null,
Lastname varchar(255) not null,
DepartmentID int not null,
Salary decimal(10 , 2),
Foreign key (DepartmentID) references Departments(DepartmentID)
); 

select * from Employees;

-- Alter command for add col Hiredate in Employees

alter table Employees add Hiredate int;

-- Inserting 10 records into Employees table with new DepartmentID values
INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary)
VALUES
('John', 'Doe', 1, 50000.00),
('Jane', 'Smith', 2, 60000.00),
('Michael', 'Johnson', 1, 55000.00),
('Emily', 'Williams', 3, 70000.00),
('Robert', 'Brown', 2, 65000.00),
('Amanda', 'Jones', 4, 75000.00),
('William', 'Davis', 3, 72000.00),
('Olivia', 'Martinez', 4, 80000.00),
('Daniel', 'Taylor', 1, 58000.00),
('Sophia', 'Miller', 5, 90000.00);

update Employees set Hiredate = 01-01-2025 where EmployeesID = 22;

-- inner join

select * from Departments as d join Employees as e on d.DepartmentID = e.DepartmentID; 

-- left join
select * from Departments as d left join Employees as e on d.DepartmentID = e.DepartmentID; 


-- join or where
select Employees.Firstname,Employees.Lastname,Employees.Hiredate from Employees where Hiredate > 01-01-2023;

-- done