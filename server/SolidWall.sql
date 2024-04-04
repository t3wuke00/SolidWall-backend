
drop table if exists account;

drop table if exists post;

CREATE TABLE account (
    id SERIAL PRIMARY KEY,
    email  varchar(100) unique not null,
    password varchar(225) not null
);

INSERT INTO account (email, password) VALUES ('admin@foo.com', 'admin123');

create table post (
    id serial primary key,
    message text not null
);

insert into post (message) values ( 'My test message');
insert into post (message) values ( 'My another test message')


