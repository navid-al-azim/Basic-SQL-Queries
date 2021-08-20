-- dropping a table
drop table student;

-- crating a table
-- student id will be the primary key with no null values and each values will be unique and will be auto incremented
create table student (
    student_id int primary key not null auto_increment unique, 
    name varchar(20),
    major varchar(20)
);

-- viewing the whole table
select * from student;

-- inserting values into the table 
insert into student (name, major) VALUES
    ('Navid', 'CS'),
    ('Afrina', 'CSE'),
    ('Ibtehaz', 'CS'),
    ('Swapnil', 'EEE'),
    ('Pratik', 'BBA'), 
    ('Labiba', 'Pharmacy'),
    ('Sadat', 'BBA');
insert into student (name, major) values 
    ('Nayeem', 'Pharmacy');

-- updating some values 
update student
    set major = 'BBS'
    where name = 'Sadat';
update student
    set major = 'Bizz Studies'
    where major = 'BBA' or major = 'BBS';

-- deleting some values 
delete from student 
    where name = 'Sadat';


-- viewing table in a specific order
select s.name, s.major from student as s
    order by major;

 -- ordering by multiple columns 
 select * from student 
    order by major, student_id;

--viewing tables with conditions included 
select name from student
    where student_id < 6 and major <> 'CS';
select * from student where 
    major in('CSE', 'CS');
select * from student
    where major = 'CSE' or major = 'CS'
     order by student_id desc