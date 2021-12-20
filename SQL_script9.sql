CREATE TABLE schoolStudents(
	sid int not null auto_increment,
    name text not null,
    PRIMARY KEY (sid)
);
​

CREATE TABLE teachers(
tid int not null,
name text not null,
PRIMARY KEY(tid)
);

CREATE TABLE courses(
cid int not null,
tid int not null,
PRIMARY KEY (cid)
);

CREATE TABLE exams(
exid int not null,
sid int not null,
cid int not null,
grade int not null,
PRIMARY KEY(exid)
);

DROP TABLE IF EXISTS schoolStudents;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS exams;

​
INSERT INTO schoolStudents VALUES(1,'Mark');
INSERT INTO schoolStudents VALUES(2,'Oleg');
INSERT INTO schoolStudents VALUES(3,'Tom');
INSERT INTO schoolStudents VALUES(4,'Jane');
INSERT INTO schoolStudents VALUES(5,'Anastasia');
INSERT INTO schoolStudents VALUES(6,'Kate');
INSERT INTO schoolStudents VALUES(7,'Inna');
​
SELECT * from schoolStudents;
​
INSERT INTO teachers VALUES(1,'Oliver');
INSERT INTO teachers VALUES(2,'Harry');
INSERT INTO teachers VALUES(3,'Jacob');
INSERT INTO teachers VALUES(4,'George');
​
SELECT * from teachers;

INSERT INTO courses VALUES(1,2);
INSERT INTO courses VALUES(2,1);
INSERT INTO courses VALUES(3,4);
INSERT INTO courses VALUES(4,3);

SELECT * from courses;

INSERT INTO exams VALUES(1,3,1,7);
INSERT INTO exams VALUES(2,1,2,5);
INSERT INTO exams VALUES(3,2,4,6);
INSERT INTO exams VALUES(4,4,3,9);

SELECT * from exams;

UPDATE schoolStudents SET name = 'Olga' WHERE sid = 1;
UPDATE schoolStudents SET name = 'Anna' WHERE sid = 6;
UPDATE schoolStudents SET name = 'Ksenia' WHERE sid = 4;
UPDATE schoolStudents SET name = 'Lora' WHERE sid = 7;

UPDATE teachers SET name = 'Felix' WHERE tid = 1;
UPDATE teachers SET name = 'Alex' WHERE tid = 4;
UPDATE teachers SET name = 'Simon' WHERE tid = 2;
UPDATE teachers SET name = 'Martin' WHERE tid = 3;

UPDATE courses SET tid = 2 WHERE cid = 1;
UPDATE courses SET tid = 1 WHERE cid = 3;
UPDATE courses SET tid = 3 WHERE cid = 2;
UPDATE courses SET tid = 4 WHERE cid = 4;

UPDATE  exams SET grade = 2 WHERE cid = 1;
UPDATE  exams SET cid = 2 WHERE exid = 3;
UPDATE  exams SET sid = 7 WHERE grade = 9;
UPDATE  exams SET exid = 2 WHERE sid = 4;






