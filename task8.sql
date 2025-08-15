delimiter $$
create procedure getbooksbyauthor(
in authorname varchar(100)
)
begin
select b.book_id, b.title, b.genre, b.publish_year
from books b
inner join authors a on b.author_id=a.author_id
where a.name=authorname;
end $$
delimeter ;
call getbooksbyauthor('Prajakta Koli');


delimiter $$
create function loandurationdays(loanid int)
returns int
deterministic
begin
declare daysloaned int;
select datediff(return_date, loan_date)
into daysloaned
from loans
where loan_id=loanid;
return daysloaned;
end $$
delimiter ;
select loandurationdays(74) as daysborrowed;