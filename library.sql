
create database library ;
use library ;
create table book (
book_id INT NOT NULL PRIMARY KEY  ,
book_Type varchar(50) NULL ,
Rack_book int null ,
book_Price int NULL 
);
select *from book ;

create table student (
student_id int not null primary key ,
student_Name varchar(50) null ,
student_Phone int null ,
student_Address varchar(50) null ,
book_id int not null
);
select *from student ;



create table teachers (
teachers_id INT NOT NULL PRIMARY KEY ,
teachers_name varchar(50) null , 
teachers_Phone int null ,
book_id int not null ,
student_id int not null ,
foreign key  (book_id) References book (book_id) ,
foreign key  (student_id ) References student (student_id ) 
);
select *from teachers ;


 
insert into book(book_id, book_type, Rack_book, book_price)
values(10021,'religious',1,50 );


insert into book(book_id, book_type, Rack_book, book_price)
values(10022,'cultural',5,60 );

insert into book(book_id, book_type, Rack_book, book_price)
values(10023,'social',8,80 );

insert into book(book_id, book_type, Rack_book, book_price)
values(10024,'historical',16,70 );

insert into book(book_id, book_type, Rack_book, book_price)
values(10025,'the enviroment',17,100 );

select *from book;

insert into student(student_id, student_Name, student_phone, student_Address, book_id)
values(1201516,'Amar mohamed',01020305060,'Domeat',10021 );

insert into student(student_id, student_Name, student_phone, student_Address, book_id)
values(1201517,'Kareem elsayed',01134672821,'samanhor',10022 );

insert into student(student_id, student_Name, student_phone, student_Address, book_id)
values(1201518,'mohsen elzogbe',01244306020,'Kom hamada',10023 );

insert into student(student_id, student_Name, student_phone, student_Address, book_id)
values(1201519,'Mohamed metwaly',01588207762,'elgiza',10024 );

insert into student(student_id, student_Name, student_phone, student_Address, book_id)
values(1201520,'yousef walied',01032467003,'marth matroh',10025 );


SELECT *FROM student ;

insert into teachers(teachers_id, teachers_name, teachers_phone, book_id, student_id) 
values(2141021,'yahya essam', 01070565613,10021,1201516);

insert into teachers(teachers_id, teachers_name, teachers_phone, book_id, student_id)  
values(2141022,'radwan amer', 0159474891,10022,1201517);

insert into teachers(teachers_id, teachers_name, teachers_phone, book_id, student_id) 
values(2141023,'Abanob nader', 0118383912,10023,1201518);


insert into teachers(teachers_id, teachers_name, teachers_phone, book_id, student_id) 
values(2141024,'korols reda', 01272921091,10024,1201519);
 
 
insert into teachers(teachers_id, teachers_name, teachers_phone, book_id, student_id) 
values(2141025,'sherif mohamed', 01061101923,10025,1201520);

select *from teachers;




 select * from book where book_id  in ( select distinct student_id from student);
 
 select * from book where book_id not in (select distinct teachers_id from teachers) ;

  select * from student where student_id not in ( select distinct teachers_id from teachers);

 select COUNT(student_id) as Count_student  from student group by student_id ;

select COUNT(book_id) as Count_book  from book group by book_id ;

update student
set student_Name = 'mona elmaslmany' 
where student_id = 1201516 ;
 
 update student
set student_Name = 'monal ahmed' 
where student_id = 1201520 ;

update student
set student_Name = 'donia ibrahim' 
where student_id = 1201518 ;

update student
set student_Name = 'sherief khaled' 
where student_id = 1201519 ;




update student
set student_Name = 'sherief khaled' 
where student_id = 1201517 ;


delete from teachers
where teachers_id = 2141022 ;

delete from teachers
where teachers_id = 2141023 ;

delete from teachers
where teachers_id = 2141024;

delete from book
where book_id = 10023 ;

delete from book
where book_id = 10024 ;