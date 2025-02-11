create database collage;
use collage;
show databases;

create table students(stdid int primary key ,
                      stdname varchar(100) not null,
                      GENDER VARCHAR(50) not null,				      
                      stdphone integer not null,
                      EMAIL VARCHAR(100) unique,
				      deptid int,
                      foreign key(deptid) 
                      references departments (deptid));
                      
 select * from students;    
 
 insert into students(stdid,stdname,GENDER,stdphone,EMAIL,deptid)values
 (1001,'sharmila','female',25225653,'sharmila@gmail.com',101),
 (1002,'prasuna','female',25465575,'prasuna@gmail.com',102),
 (1003,'nasima','female',25789454,'nasima@gmail.com',104),
 (1004,'raju','male',35645555,'raju@gmail.com',103);
 
                      
 
create table departments(deptid int primary key,
                         deptname varchar(100) not null,
                         HOD varchar(100) not null);
                         
select * from departments;    

insert into  departments(deptid,deptname,HOD)value(101,'computer applications','malathi mam'),
(102,'commerce','abc'),(103,'physics','efgh'),(104,'english','agdh');              
                         
create table courses(coursesid int primary key,
                     coursesname varchar(100) not null,
                     deptid int,
                     foreign key(deptid)
                     references departments (deptid));
select*from courses;

insert into courses(coursesid,coursesname,deptid)values
(201,'computer',101),
(202,'B.com',102),
(203,'MPCS',103),
(204,'English',104);


                    
create table professors(professorsid int primary key,
						professorname varchar(100) not null,
                        deptid int,
                        phoneno int not null,
                        email varchar(100) not null,
                        foreign key(deptid)
                        references departments (deptid));
select * from professors;

insert into professors(professorsid,professorname,deptid,phoneno,email)values
(301,'malathi mam',101,25655652,'malthi@gmail.com'),
(302,'abc',102,52464652,'abac@gmail.com'),
(303,'efgh',103,2514745,'efgh@gmail.com'),
(304,'agdh',104,458795,'agdk@gmail.com');


                        
                        
create TABLE ENROLLMENT(ENROLLID INT primary KEY,
                        stdid INT,
                        coursesid INT,
                        foreign key(stdid)
                        references
                        students(stdid),
                        foreign key(coursesid)
                        references
                        courses(coursesid));
 select * from ENROLLMENT;        
 
insert into ENROLLMENT(ENROLLID,stdid,coursesid)values
(401,1001,201),(402,1002,202),(403,1003,204);

show tables;

 alter table students
 rename column stdname to stdfullname;
 
 update students set EMAIL  = 'malkojisharmila@gmail.com'
where stdid = 1001;

select * from students;
 
 select EMAIL
 from students
 order by EMAIL desc;
 
 


