CREATE DATABASE IF NOT EXISTS library_management ;
USE library_management;

drop table books;
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author_id INT,
    genre VARCHAR(50),
    year_published INT,
    available_copies INT
    );

INSERT INTO Books (book_id,title,author_id,genre,year_published,available_copies)
values
(1, 'Harry Potter and the Sorcerer''s Stone', 1, 'Fantasy', 1997, 5),
(2, 'Harry Potter and the Chamber of Secrets', 1, 'Fantasy', 1998, 4),
(3, 'Harry Potter and the Prisoner of Azkaban', 1, 'Fantasy', 1999, 6),
(4, 'Harry Potter and the Goblet of Fire', 1, 'Fantasy', 2000, 7),
(5, 'Harry Potter and the Order of the Phoenix', 1, 'Fantasy', 2003, 3),
(6, 'A Game of Thrones', 2, 'Fantasy', 1996, 6),
(7, 'A Clash of Kings', 2, 'Fantasy', 1998, 4),
(8, 'A Storm of Swords', 2, 'Fantasy', 2000, 5),
(9, 'A Feast for Crows', 2, 'Fantasy', 2005, 2),
(10, 'A Dance with Dragons', 2, 'Fantasy', 2011, 3),
(11, 'The Hobbit', 3, 'Fantasy', 1937, 8),
(12, 'The Fellowship of the Ring', 3, 'Fantasy', 1954, 5),
(13, 'The Two Towers', 3, 'Fantasy', 1954, 4),
(14, 'The Return of the King', 3, 'Fantasy', 1955, 6),
(15, 'The Silmarillion', 3, 'Fantasy', 1977, 3),
(16, 'Murder on the Orient Express', 4, 'Mystery', 1934, 6),
(17, 'And Then There Were None', 4, 'Mystery', 1939, 5),
(18, 'The Murder of Roger Ackroyd', 4, 'Mystery', 1926, 4),
(19, 'Death on the Nile', 4, 'Mystery', 1937, 3),
(20, 'The ABC Murders', 4, 'Mystery', 1936, 2),
(21, 'Angels & Demons', 5, 'Thriller', 2000, 7),
(22, 'The Da Vinci Code', 5, 'Thriller', 2003, 6),
(23, 'The Lost Symbol', 5, 'Thriller', 2009, 5),
(24, 'Inferno', 5, 'Thriller', 2013, 4),
(25, 'Origin', 5, 'Thriller', 2017, 3),
(26, 'The Alchemist', 6, 'Fiction', 1988, 8),
(27, 'Brida', 6, 'Fiction', 1990, 5),
(28, 'Veronika Decides to Die', 6, 'Fiction', 1998, 4),
(29, 'The Devil and Miss Prym', 6, 'Fiction', 2000, 3),
(30, 'Eleven Minutes', 6, 'Fiction', 2003, 6),
(31, 'To Kill a Mockingbird', 7, 'Fiction', 1960, 6),
(32, 'Go Set a Watchman', 7, 'Fiction', 2015, 3),
(33, 'The Great Gatsby', 8, 'Fiction', 1925, 5),
(34, 'This Side of Paradise', 8, 'Fiction', 1920, 4),
(35, 'Tender Is the Night', 8, 'Fiction', 1934, 3),
(36, 'The Beautiful and Damned', 8, 'Fiction', 1922, 2),
(37, 'Adventures of Huckleberry Finn', 9, 'Adventure', 1884, 6),
(38, 'The Adventures of Tom Sawyer', 9, 'Adventure', 1876, 5),
(39, 'Life on the Mississippi', 9, 'Adventure', 1883, 4),
(40, 'A Connecticut Yankee in King Arthur''s Court', 9, 'Adventure', 1889, 3),
(41, 'Pride and Prejudice', 10, 'Romance', 1813, 6),
(42, 'Sense and Sensibility', 10, 'Romance', 1811, 4),
(43, 'Mansfield Park', 10, 'Romance', 1814, 3),
(44, 'Emma', 10, 'Romance', 1815, 5),
(45, 'Persuasion', 10, 'Romance', 1817, 2),
(46, 'Fantastic Beasts and Where to Find Them', 1, 'Fantasy', 2001, 4),
(47, 'The Tales of Beedle the Bard', 1, 'Fantasy', 2008, 3),
(48, 'Fire & Blood', 2, 'Fantasy', 2018, 5),
(49, 'The Children of Húrin', 3, 'Fantasy', 2007, 4),
(50, 'Poirot Investigates', 4, 'Mystery', 1924, 2);
 
 
 drop table authors;

CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

INSERT INTO Authors (Author_id,name,country)
VALUES
(1, 'J.K. Rowling', 'UK'),
(2, 'George R.R. Martin', 'USA'),
(3, 'J.R.R. Tolkien', 'UK'),
(4, 'Agatha Christie', 'UK'),
(5, 'Dan Brown', 'USA'),
(6, 'Paulo Coelho', 'Brazil'),
(7, 'Harper Lee', 'USA'),
(8, 'F. Scott Fitzgerald', 'USA'),
(9, 'Mark Twain', 'USA'),
(10, 'Jane Austen', 'UK'),
(11, 'Charles Dickens', 'UK'),
(12, 'Leo Tolstoy', 'Russia'),
(13, 'Fyodor Dostoevsky', 'Russia'),
(14, 'Ernest Hemingway', 'USA'),
(15, 'William Shakespeare', 'UK'),
(16, 'Arthur Conan Doyle', 'UK'),
(17, 'Oscar Wilde', 'Ireland'),
(18, 'Emily Brontë', 'UK'),
(19, 'Charlotte Brontë', 'UK'),
(20, 'Virginia Woolf', 'UK'),
(21, 'H.G. Wells', 'UK'),
(22, 'George Orwell', 'UK'),
(23, 'Aldous Huxley', 'UK'),
(24, 'John Steinbeck', 'USA'),
(25, 'Herman Melville', 'USA'),
(26, 'Stephen King', 'USA'),
(27, 'J.D. Salinger', 'USA'),
(28, 'Jack London', 'USA'),
(29, 'Edgar Allan Poe', 'USA'),
(30, 'Nathaniel Hawthorne', 'USA'),
(31, 'Khaled Hosseini', 'Afghanistan'),
(32, 'Chinua Achebe', 'Nigeria'),
(33, 'Ngũgĩ wa Thiong’o', 'Kenya'),
(34, 'Gabriel García Márquez', 'Colombia'),
(35, 'Isabel Allende', 'Chile'),
(36, 'Mario Vargas Llosa', 'Peru'),
(37, 'Haruki Murakami', 'Japan'),
(38, 'Kazuo Ishiguro', 'UK'),
(39, 'Yukio Mishima', 'Japan'),
(40, 'Kenzaburo Oe', 'Japan'),
(41, 'R.K. Narayan', 'India'),
(42, 'Arundhati Roy', 'India'),
(43, 'Chetan Bhagat', 'India'),
(44, 'Amish Tripathi', 'India'),
(45, 'Ruskin Bond', 'India'),
(46, 'Rabindranath Tagore', 'India'),
(47, 'Vikram Seth', 'India'),
(48, 'Salman Rushdie', 'India/UK'),
(49, 'Anita Desai', 'India'),
(50, 'Jhumpa Lahiri', 'India/USA');



select * from  books;

select * from Authors;

select * from Books;
 
 --- Update column
 
 update Books set year_published = 1998 where book_id=1;
 
 update Books set title = 'The warrior',available_copies = 10 where book_id=6;

update Authors set country = 'india' where author_id=1;

SET SQL_SAFE_UPDATES = 0;

select * from Authors;
select*from Books;

update Books set available_copies = 7 
where title = 'The warrior' or genre = 'Fantasy';

update Books set available_copies = 8
where title = 'The warrior' and genre = 'Fantasy';

update Authors set country = 'India' where name like '%e';


--- DELETE querieS

select*from Books;

delete from Books where book_id =2;

delete from Books where title = 'The Two Towers';

delete from Books where genre =  'Fantasy' and available_copies = 6;

delete from Authors where country like Nigeria ;



