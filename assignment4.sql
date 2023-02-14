---display  branchid from student tablele ------
create table student
(
id int primary key,
name varchar(50),
gender varchar(10),
branch varchar(20),
branchid int
)
drop table student

insert into student values(1,'loki','male','cse',530)
insert into student values(2,'charan','male','cse',510)
insert into student values(3, 'likitha','female','cse',529)
insert into student values(4,'suma','female','eee',512)
insert into student values(5,'charitha','female','eee',531)

select * from student

drop function getstudentdetails

create function getstudentdetails(@id int)
returns table
as
return
(
select * from student where branchid=@id
)
select * from getstudentdetails(510)

create function getstudentdetailsby(@gender varchar(10))
returns table
as
return
(
select * from student where gender=@gender
)
select * from getstudentdetailsby('female')

CREATE FUNCTION NetSales (@orderID INT)
RETURNS TABLE
AS
RETURN (
   SELECT order_id, SUM(list_price) AS NetSales
  FROM sales.order_items
   WHERE order_id = @orderID
   GROUP BY order_id
)

 select* from NetSales(1)
	
	
