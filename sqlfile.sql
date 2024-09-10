--Create a table student that contains student_id, student_Name, age, registration_date, department_id
CREATE TABLE student_info(
student_id INT PRIMARY KEY,
student_name VARCHAR(30) NOT NULL,
age INT CHECK(age >= 18),
reg_date DATE DEFAULT GETDATE(),
department_id INT );

select * from student_info

--create a table department that contains department_name and department_id
CREATE TABLE department_info(
department_name VARCHAR(500) NOT NULL,
department_id INT PRIMARY KEY );

--Initiating foreign key constrain to department_id in student table
ALTER TABLE student_info
ADD CONSTRAINT department_key FOREIGN KEY (department_id) REFERENCES department_info(department_id)

ALTER TABLE department_info 
ADD CONSTRAINT UNIQUE_department_name UNIQUE (department_name)

--Add columns to student_info
ALTER TABLE student_info
ADD contact VARCHAR(12) UNIQUE

--Drop colomn from student_info
ALTER TABLE student_info
DROP CONSTRAINT UQ__student___870C3C8B315B02C0

ALTER TABLE student_info
DROP COLUMN contact