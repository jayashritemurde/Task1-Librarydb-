-- select
select b.title, b.genre,
(select a.name
from authors a
where a.author_id=b.author_id) as authorname
from books b;

-- where(in)
select * from books where title in
(select booktitle
from orders
where status='Borrowed');

-- where
select m.name, m.email from members m where
(select count(*)
from loans l
where l.member_id=m.member_id) > 1;

-- from
select author_id, name, bookcount
from(
select a.author_id, a.name, count(b.book_id) as bookcount
from authors a
left join books b on a.author_id=b.author_id
group by a.author_id, a.name
) as authorbooks
where bookcount > 0;

-- exists
select c.Firstname, c.Lastname
from Customers c
where exists (
select 1
from Orders o
where o.CustomerID=c.CustomerID
);
