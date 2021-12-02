USE team4;
DROP TABLE IF EXISTS user;
CREATE TABLE user
(
    user_id          INT PRIMARY KEY AUTO_INCREMENT,
    first_name       VARCHAR(100) NOT NULL,
    middle_name      VARCHAR(100),
    last_name        VARCHAR(100) NOT NULL,
    bate_of_birth    DATE         NOT NULL,
    user_password    VARCHAR(100) NOT NULL,
    date_registation DATE         NOT NULL,
    email            VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS book;
CREATE TABLE book
(
    book_id     INT PRIMARY KEY AUTO_INCREMENT,
    book_title  VARCHAR(100) NOT NULL,
    main_author VARCHAR(100) NOT NULL,
    co_author   VARCHAR(100),
    amount      INT          NOT NULL
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(
    order_id  INT PRIMARY KEY AUTO_INCREMENT,
    user_id   INT  NOT NULL,
    book_id   INT  NOT NULL,
    from_date DATE NOT NUll,
    to_date   DATE NOT NUll,
    is_active TINYINT(1) NOT NULL
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
