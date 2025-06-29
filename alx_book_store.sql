-- create the database
create database if not exists alx_book_store;

-- use the database
use alx_book_store;

-- authors table
create table authors (
    author_id int auto_increment primary key,
    author_name varchar(215) not null
);

-- books table
create table books (
    book_id int auto_increment primary key,
    title varchar(130) not null,
    author_id int,
    price double not null,
    publication_date date,
    foreign key (author_id) references authors(author_id)
);

-- customers table
create table customers (
    customer_id int auto_increment primary key,
    customer_name varchar(215) not null,
    email varchar(215) not null,
    address text
);

-- orders table
create table orders (
    order_id int auto_increment primary key,
    customer_id int,
    order_date date,
    foreign key (customer_id) references customers(customer_id)
);

-- order_details table
create table order_details (
    orderdetailid int auto_increment primary key,
    order_id int,
    book_id int,
    quantity double not null,
    foreign key (order_id) references orders(order_id),
    foreign key (book_id) references books(book_id)
);
