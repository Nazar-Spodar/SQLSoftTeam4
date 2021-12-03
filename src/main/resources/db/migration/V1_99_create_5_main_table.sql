USE soft;
-- SELECT * FROM Book; // 1.Get information about all books
create table User (
                      id int primary key auto_increment,
                      firstName varchar(255) not null,
                      midleName varchar(255),
                      lastName varchar(255) not null,
                      dateOfBirthday date not null,
                      dateRegistration date not null,
                      email varchar(255) not null,
                      userPassword varchar(255) not null,
                      userType varchar(255) not null
);


CREATE TABLE book
(
    bookId     INT PRIMARY KEY AUTO_INCREMENT,
    bookTitle  VARCHAR(100) NOT NULL,
    MainAuthorName VARCHAR(100) NOT NULL,
    coAuthor   VARCHAR(100),
    OriginalsAmount INT,
    CopiesAmount INT,
    amount      INTNOT NULL
);