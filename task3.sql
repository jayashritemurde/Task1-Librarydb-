-- select all columns from the books table
select * from books;

-- select specific columns from authors
select name, nationality from authors;

-- between
select * from members where join_date between '2025-07-01' and '2025-08-15';

-- and
select * from books where publish_year > 2018 and genre='Self Buildup';

-- like
select * from books where title like '%Reader%';

-- or
select * from authors where nationality='Indian' or nationality='German';

-- select all loans made before May1, 2025
select * from loans where loan_date < '2025-05-01';

-- order by
-- sort books by publish year in desc order
select * from books order by publish_year desc; 

-- get top 3 most recently published books
select * from books order by publish_year desc limit 3; 

-- get members whose email is missing(blank or '-')
select * from members where email='' or email='-';

-- list all books along with author names
select B.title, A.name as author_name from books B join authors A on B.author_id=A.author_id;

-- select members whose name starts with'P'
select * from members where name like 'p%';

-- select authors sorted alphabetically ny name
select * from authors order by name asc;

-- get loans of the book 'The Reader'
select L.* from loans L join Books B on L.book_id=B.book_id where B.title='The Reader';

-- list all members and the books they borrowed
select M.name as member_name, B.title as borrowed_book from loans L join members M on L.member_id=M.member_id
join books B on L.book_id=B.book_id;