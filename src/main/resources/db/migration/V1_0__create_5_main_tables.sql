USE team4;
DROP TABLE IF EXISTS user;
CREATE TABLE user
(
    userId          INT PRIMARY KEY AUTO_INCREMENT,
    firstName       VARCHAR(100) NOT NULL,
    middleName      VARCHAR(100),
    lastName        VARCHAR(100) NOT NULL,
    dateOfBirthday    DATE         NOT NULL,
    userPassword    VARCHAR(100) NOT NULL,
    dateRegistation DATE         NOT NULL,
    email            VARCHAR(100) NOT NULL,
    userType VARCHAR (255) NOT NULL
);

DROP TABLE IF EXISTS book;
CREATE TABLE book
(
    bookId     INT PRIMARY KEY AUTO_INCREMENT,
    bookTitle  VARCHAR(100) NOT NULL,
    mainAuthor VARCHAR(100) NOT NULL,
    coAuthor   VARCHAR(100),
    amount      INTNOT NULL
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(
    orderId  INT PRIMARY KEY AUTO_INCREMENT,
    userId   INT  NOT NULL,
    bookId   INT  NOT NULL,
    fromDate DATE NOT NUll,
    toDate   DATE NOT NUll,
    isActive TINYINT(1) NOT NULL
);

DROP TABLE IF EXISTS reader;
CREATE TABLE reader
(
    reader_id    INT PRIMARY KEY AUTO_INCREMENT,
    user_id      INT NOT NULL,
    is_logged_in TINYINT(1)
);

DROP TABLE IF EXISTS manager;
CREATE TABLE manager
(
    manager_id   INT PRIMARY KEY AUTO_INCREMENT,
    user_id      INT NOT NULL,
    is_logged_in TINYINT(1)
);
