-- COUNT: Total number of books in the library
select count(*) as total_books from books;

-- COUNT: Number of members who have borrowed at least one book
select count(distinct member_id) as active_members from loans;

-- AVG: Average publish year of all books
select avg(publish_year) as average_publish_year from books;

-- AVG: Average number of books per author
select avg(book_count) as avg_book_per_author
from(
select count(*) as book_count from books group by author_id
) as author_books; 

-- MIN / MAX: Earliest and latest published book year
select min(publish_year) as earliest_year, max(publish_year) as latest_year from books;

-- MIN / MAX: First and last loan date in the system
select min(loan_date) as first_loan_date, max(loan_date) as last_loan_date from loans;

-- AVG: Average number of loans per book
select avg(loan_count) as avg_loans_per_book
from(
select count(*) as loan_count
from loans
group by book_id
) as book_loans;
