create table users (
    id integer primary key autoincrement,
    first_name text not null,
    last_name text not null,
    motto text null
);

create table dogs (
    id integer primary key autoincrement,
    name text not null
);

create table favorites (
    id integer primary key autoincrement,
    user_id integer not null,
    dog_id integer not null,
    unique (user_id, dog_id),
    foreign key (user_id) references users(id),
    foreign key (dog_id) references dogs(id)
);

insert into users (first_name, last_name, motto) values ('Jon', 'Higgz', 'I love coding');

insert into users (first_name, last_name, motto) values ('Andrey', 'Rusterton', 'I love coding even more');

insert into users (first_name, last_name, motto) values ('Peter', 'Garboni', 'I love coding even more');

insert into dogs (name) values ('DOOMSLAYER');
insert into dogs (name) values ('Zoey');
insert into dogs (name) values ('Jefferey');

insert into favorites (user_id, dog_id) values (3, 1);
insert into favorites (user_id, dog_id) values (1, 1);
insert into favorites (user_id, dog_id) values (2, 1);
insert into favorites (user_id, dog_id) values (1, 3);
insert into favorites (user_id, dog_id) values (2, 2);