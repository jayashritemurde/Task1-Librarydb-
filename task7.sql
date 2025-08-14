create view bookswithauthors as
select 
b.book_id,
b.title,
b.genre,
b.publish_year,
a.name as author_name,
a.nationality
from books b
join authors a on b.author_id=a.author_id;

select * from bookswithauthors;


create view loanhistory as
select
l.loan_id,
m.name as member_name,
b.title as book_title,
l.loan_date,
l.return_date
from loans l
join members m on l.member_id=m.member_id
join books b on l.book_id=b.book_id;

select * from loanhistory order by loan_date desc;


create view activeloans as
select
m.name as member_name,
b.title as book_title,
l.loan_date,
l.return_date
from loans l
join members m on l.member_id=m.member_id
join books b on l.book_id=b.book_id
where l.return_date is null or l.return_date > curdate();

select * from activeloans;


create view CustomerOrdersSummary as
select
c.CustomerID,
concat(c.FirstName, ' ',  c.LastName) as CustomerName,
count(o.OrderID) as total_orders
from Customers c
left join Orders o on c.CustomerID=o.CustomerID
group by c.CustomerID, CustomerName;

select * from CustomerOrdersSummary order by total_orders desc;


create view Mysterybooks as
select *
from books
where genre='Mystery'; 

select * from Mysterybooks;