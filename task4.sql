select count(*) as total_books from books;

select count(distinct member_id) as active_members from loans;

select avg(publish_year) as average_publish_year from books;

select avg(book_count) as avg_book_per_author
from(
select count(*) as book_count from books group by author_id
) as author_books; 

select min(publish_year) as earliest_year, max(publish_year) as latest_year from books;

select min(loan_date) as first_loan_date, max(loan_date) as last_loan_date from loans;

select avg(loan_count) as avg_loans_per_book
from(
select count(*) as loan_count
from loans
group by book_id
) as book_loans;