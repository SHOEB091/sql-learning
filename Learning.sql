create database new1;

drop database new1;

/*CREATE DATABASE college;*/

USE college;

CREATE TABLE student ( 
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);


INSERT INTO student VALUES(1 , "Shoeb" , 21);
INSERT INTO student VALUES(2 , "Shama" , 21);
INSERT INTO student VALUES(3 , "Pookie" , 21);


select * from student;

show DATABASES;

insert into student(id,name,age) values 
(101,"mahesh",20),
(102,"dalesh",19);



/* Practice Questions */

CREATE DATABASE sitech;

USE sitech;

CREATE TABLE employee (
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT NOT NULL
);

INSERT INTO employee VALUES(1,"adam",250000),
(2,"Manav",30000),
(3,"sodhi",40000);

select * from employee;

/*. KEYS */
/*.Jo column Kisi Dusre Table ke Column ki Primary Key hogi use Foreign key kethe hai  */

show databases;

use college;

create table temp1(
id int unique);

insert into temp1 values(1);


create table student2(
	rollno  INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
    

);

INSERT INTO student2 VALUES(101,"anil",78,"c","Pune"),
(102,"SHAMA",98,"A","mumbai"),
(103,"nittin",28,"c","jalandhar"),
(104,"mukes",68,"c","faridabad"),
(105,"pookie",78,"B","lucknow");



select * from student2;

select name , marks from student2;

select * from student2 where marks>80;

SELECT * FROM student2 LIMIT 3;


INSERT INTO student2 VALUES(107,"farhan naseem",80,"B","Delhi");

SELECT city, count(name)
FROM student2
GROUP BY city;

SELECT grade, COUNT(rollno) 
FROM student2 
GROUP BY grade
ORDER BY grade ASC;

SELECT COUNT(name) , city 
FROM student2
GROUP BY city
HAVING MAX(marks) > 80;

SELECT city 
FROM student2
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks)>=80;

SET SQL_SAFE_UPDATES=0;

UPDATE student2
SET grade ="C"
WHERE grade ="B";


/* FOREIGN Key Concept */

create table dept(
	id INT PRIMARY KEY,
    name VARCHAR(50)
    
);

insert into dept values(101,"English"),
(102,"Maths");

create table teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) references dept(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
    
);

Insert into teacher values(101,"AVA",101),
(102,"ADMS",102);

update dept 
set id = 103 
where id = 102;

select * from teacher;

/* table realted querries */

ALTER TABLE student
ADD COLUMN  Address VARCHAR(50);

select * from student ;

ALTER TABLE student 
DROP COLUMN Address;

create table student (
student_id INT PRIMARY KEY,
name VARCHAR(20)
);

INSERT INTO student VALUES(101 , " adam"),
(102,"bob"),
(103,"casey");

create table course (
student_id INT PRIMARY KEY,
course VARCHAR(20)

);

INSERT INTO course VALUES(102 , "english"),
(105,"math"),
(103,"science"),
(107," computer science");


/*Inner Join */
select * from student
inner join course
on student.student_id = course.student_id;


/*LEFT JOIN */
SELECT *
FROM student as s
LEFT JOIN course as c
on s.student_id = c.student_id;

/* Right join */
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id;

/*FULL JOIN */

SELECT *
FROM student as s
LEFT JOIN course as c
on s.student_id = c.student_id
UNION
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id;


/* Left EXCLUSIVE Join */
select * 
from student as a
left join course as b
on a.student_id = b.student_id
where b.student_id is NULL;



/* right EXCLUSIVE Join */
select * 
from student as a
right join course as b
on a.student_id = b.student_id
where b.student_id is NULL;



























