select * from tab;
show tables;

select * from librarydb.authors;
insert into `librarydb`.`authors` (`author_id`, `name`, `nationality`) values ('101', 'Prajakta Koli', 'Indian');
insert into `librarydb`.`authors` (`author_id`, `name`, `nationality`) values ('102', 'Braint Racy', 'Canada');
insert into `librarydb`.`authors` (`author_id`, `name`, `nationality`) values ('103', 'Alex Michaelides', 'British');
insert into `librarydb`.`authors` (`author_id`, `name`, `nationality`) values ('104', 'Hector Garcia and Francesc Miralles', 'Japan');
insert into `librarydb`.`authors` (`author_id`, `name`, `nationality`) values ('105', 'Shaurya Kapoor', 'Indian');
insert into `librarydb`.`authors` (`author_id`, `name`, `nationality`) values ('106', 'hbakjkldkdk', 'hgdhb');

update authors set name='Bernhard Schlink' where author_id=106;
update authors set nationality='German' where author_id=106;
delete from authors where author_id=102;

select * from librarydb.books;
INSERT INTO `librarydb`.`books` (`book_id`, `title`, `genre`, `publish_year`, `author_id`) VALUES ('11', 'Too Good To Be True', 'Romance Novel', 2025, '101');
INSERT INTO `librarydb`.`books` (`book_id`, `title`, `genre`, `publish_year`, `author_id`) VALUES ('12', 'Eat That Frog', 'Self Help Book', 2001, '102');
INSERT INTO `librarydb`.`books` (`book_id`, `title`, `genre`, `publish_year`, `author_id`) VALUES ('13', 'The Silent Reader', 'SMystery', 2019, '103');
INSERT INTO `librarydb`.`books` (`book_id`, `title`, `genre`, `publish_year`, `author_id`) VALUES ('14', 'Ikigai', 'Self Buildup', 2017, '104');
INSERT INTO `librarydb`.`books` (`book_id`, `title`, `genre`, `publish_year`, `author_id`) VALUES ('15', 'The Art of Not Overthinking', 'Importance of Self Love', 2024, '105');
INSERT INTO `librarydb`.`books` (`book_id`, `title`, `genre`, `publish_year`, `author_id`) VALUES ('16', 'The Reader', 'Comedy', 2018, '106');

update books set genre='Historical Fiction' where book_id=16;
update books set publish_year=1995 where book_id=16;
delete from books where author_id=102; 

select * from librarydb.loans;
INSERT INTO `librarydb`.`loans` (`loan_id`, `book_id`, `member_id`, `loan_date`, `return_date`) VALUES ('41', '14', '59', '2025-05-04', '2025-04-05');
INSERT INTO `librarydb`.`loans` (`loan_id`, `book_id`, `member_id`, `loan_date`, `return_date`) VALUES ('52', '15', '60', '2025-07-06', '2025-07-08');
INSERT INTO `librarydb`.`loans` (`loan_id`, `book_id`, `member_id`, `loan_date`, `return_date`) VALUES ('74', '11', '45', '2025-01-08', '2025-02-08');
INSERT INTO `librarydb`.`loans` (`loan_id`, `book_id`, `member_id`, `loan_date`, `return_date`) VALUES ('79', '16', '62', '2025-03-29', '2025-04-29');
INSERT INTO `librarydb`.`loans` (`loan_id`, `book_id`, `member_id`, `loan_date`, `return_date`) VALUES ('85', '12', '49', '2025-01-02', '2025-01-01');
INSERT INTO `librarydb`.`loans` (`loan_id`, `book_id`, `member_id`, `loan_date`, `return_date`) VALUES ('96', '13', '55', '2025-06-05', '2025-06-06');

update loans set loan_date='2024-12-12' where loan_id=79;
update loans set return_date='2025-02-12' where loan_id=79;
delete from loans where book_id=12; 

select * from librarydb.members;
INSERT INTO `librarydb`.`loans` (`member_id`, `name`, `email`, `join_date`) VALUES ('45', 'Alice Johnson', 'alice@gmail.com', '2025-08-01');
INSERT INTO `librarydb`.`loans` (`member_id`, `name`, `email`, `join_date`) VALUES ('49', 'Siddhi Dohe', '-', '2025-08-13');
INSERT INTO `librarydb`.`loans` (`member_id`, `name`, `email`, `join_date`) VALUES ('55', 'Clara Lee', 'claralee@gmail.com', '2025-08-02');
INSERT INTO `librarydb`.`loans` (`member_id`, `name`, `email`, `join_date`) VALUES ('59', 'Divesh Dongarwar', 'divesh45@gmail.com', '2025-08-15');
INSERT INTO `librarydb`.`loans` (`member_id`, `name`, `email`, `join_date`) VALUES ('60', 'Prajakta Kinnake', 'kinnakeprajakta15@gmail.com', '2025-08-14');
INSERT INTO `librarydb`.`loans` (`member_id`, `name`, `email`, `join_date`) VALUES ('62', 'Mary Kom', 'null', '2025-07-30'); 

update members set email='-' where member_id=49;
update members set email='' where member_id=62;
