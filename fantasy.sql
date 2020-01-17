create database learn_sql;

use learn_sql;


create table characters (
	id bigint,
    name varchar(50),
    level int,
    species varchar(50),
    primary key (id)
);

describe characters;

insert into characters values(1, "hermoine", 10, "witch");
insert into characters values(2, "frodo", 6, "hobbit");
insert into characters values(3, "pinkie pie", 2, "pony");
insert into characters values(9, "pikachu", 30, "pikachu");
insert into characters values(4, "spunky", 99999, "dog"); 

select name from characters;

select * from characters;

select name, level from characters where level > 15;

create table team (
	id bigint,
    name varchar(50),
    est date,
    leader_id bigint,
    primary key (id),
    foreign key (leader_id) references characters (id)
);

insert into team values (1, "awesome squad", "2020-1-1", 3);
insert into team values (2, "watchmen", "1776-1-1", 9);
insert into team values (4, "Hackers", "2020-1-18", null);

select c.name, c.level, t.name, t.est from characters c
left join team t on c.id = t.leader_id
union
select c.name, c.level, t.name, t.est from characters c
right join team t on c.id = t.leader_id;


