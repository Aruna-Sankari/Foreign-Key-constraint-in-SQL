-- 1st example --
create table branch(branch_id int primary key auto_increment,br_name varchar(10) not null,addr varchar(10));
desc branch;
insert into branch values(4,'Tenkasi','7/12'),(1,'Kadayam','9/10'),(3,'NGL','8/45');
select * from branch;

create table emp1(empid Int Primary Key,ename varchar(20) not null,job_desc varchar(20),salary int,branch_id int, Foreign key (branch_id) REFERENCES branch(branch_id));
desc emp1;
insert into emp1 values(1,'Ramya','Manager',50000,1),(2,'Maha','HR',80000,4),(3,'Vijaya','Sales',30000,3),(4,'Gowri','Analyst',20000,1),(5,'Aarthi','HR',80000,4),(6,'Aruna','Sales',30000,3);
select * from emp1; -- End

-- 2nd example --
create table emp2(empid Int Primary Key,ename varchar(20) not null,job_desc varchar(20),salary int);
desc emp2;
insert into emp2 values(1,'Ramya','Manager',50000),(2,'Maha','HR',80000),(3,'Vijaya','Sales',30000),(4,'Gowri','Analyst',20000),(5,'Aarthi','HR',80000),(6,'Aruna','Sales',30000);
select * from emp2;

create table branch1(branchid int primary key,br_name varchar(20),br_addr varchar(10),HR_id int,constraint fk_hrid foreign key (HR_id) references emp2(empid));
insert into branch1 values(4,'Tenkasi','7/12',2),(1,'Kadayam','9/10',5);
select * from branch1; -- End 

-- drop the foreign key --
alter table branch1 drop foreign key fk_hrid;
desc branch1;