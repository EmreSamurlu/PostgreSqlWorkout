create table employee (
	id serial primary key,
	name varchar(50) not null,
	birthday date,
	email varchar(100)
);

insert into employee (name, email, birthday) values ('Thalia Northage', 'tnorthage0@mlb.com', '2022-07-15');
insert into employee (name, email, birthday) values ('Glynda Durrans', 'gdurrans1@storify.com', '2022-04-28');
...
...

update employee 
	set name = case id 
			when 1 then 'Mahmut Tuncer'
			when 2 then 'İbrahim Tatlıses'
			when 3 then 'Hızır Çakırbeyli'
			when 4 then 'Hülya Avşar'
			when 5 then 'Elon Musk'
			else name
		end
where id in (1, 2, 3, 4, 5);

delete from employee 
where id between 6 and 10;