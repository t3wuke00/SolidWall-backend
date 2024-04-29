drop table if exists post;

drop table if exists account;


CREATE TABLE account (
    id SERIAL PRIMARY KEY,
    email  varchar(100) unique not null,
    password varchar(225) not null
);

create table post (
    id serial primary key,
    title VARCHAR(100) not null,
    message text not null,
    saved TIMESTAMP default CURRENT_TIMESTAMP,
    account_id int,
        constraint fk_account
            foreign key(account_id)
                references account(id)

);
