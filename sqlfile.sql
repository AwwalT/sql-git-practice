SELECT * FROM student_info

ALTER TABLE student_info
ADD CONTACT VARCHAR(20)


--This is how to insert
INSERT INTO student_info
VALUES(1,'Shade',20,'2024-02-14',1,'0908765433'),
	  (2, 'Tobi',23,'2024-02-15',2,'0908765413'),
	  (3,'Soji',35,'2024-03-14',2,'0908765633'),
	  (4,'Awwal',42,'2024-07-16',1,'0901265433'),
	  (5,'Emmanuel',18,'2024-05-14',2, '0908765533')

INSERT INTO department_info
VALUES ('Computer science', 1),
		('Statistics',2)

DROP TABLE department_info
select * from department_info

alter table department_info
drop constraint [UNIQUE_department_name]

select * from student_info


--insert into department_info
INSERT INTO department_info

select * from department_info
insert into department_info
values('web development', 3)



insert into student_info
VALUES(6,'Abdul',21,'2024-02-14',1,'0908765433'),
	  (7, 'Olabisi',33,'2024-02-15',2,'0908765413'),
	  (8,'Olasoji',34,'2024-03-14',2,'0908765633')

insert into student_info(student_id,student_name,age,department_id,contact)
VALUES(6,'Abdul',21,1,'0908765433'),
	  (7, 'Olabisi',33,2,'0908765413'),
	  (8,'Olasoji',34,2,'0908765633')

	  select * from student_info


--UPDATE VALUES SYNTAX UPDATE table_name SET column _to_update=values WHERE condition is met

UPDATE student_info
SET department_id = 3
where student_id in (6,7,8)

--single update
UPDATE student_info
SET contact = '0803456787'
where student_id = 2

--USE CASE STATEMENT TO UPDATE MULTIPLE ROWS
UPDATE student_info
SET contact = CASE
WHEN student_id = 1 THEN '34567'
WHEN student_id = 4 THEN '87699'
ELSE CONTACT
END
WHERE Student_id in (1,4)

DELETE student_info
WHERE student_id = 3