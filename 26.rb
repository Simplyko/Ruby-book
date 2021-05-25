=begin
Задачи на собеседовании в Авиакассу: 
Написать функцию print_digits(n), в которую передается целочисленный аргумент 
n (от 1 до +∞). Пример вывода метода для n=12: 		

def print_digits(n)
	1.upto(n) do |i|
		puts "#{i}" + "#{'+' if (i%2).zero?}" + "#{'*' if (i%3).zero?}"
	end
end

print_digits(12)
=end

=begin
Задан массив содержащий только целые положительные и отрицательные числа,
например: a = [-1,-2,5,6,100]
Нужно написать функцию которая выводит на экран максимум и минимум из этого
массива. Встроенными функциями пользоваться нельзя.

a = [-1,-2,5,6,100]
i=0
max = a[0]
min = a[0]
a.each do |i|
	if  i>max
		max = i
	elsif i<min
		min = i
	end
end

puts "Минимальнйы элемент:  #{min}"
puts "Максимальный элемент: #{max}"
=end

=begin
Эмулятор: https://www.tutorialspoint.com/execute_sql_online.php
 SQL запросы: 
 hotel (hotel_id, name, address)
hotel_room (hotel_room_id, hotel_id, area, price)
Нужно написать SQL запрос, который выведет площадь самой дорогой комнаты из всех
отелей.

 SELECT area FROM hotel_room WHERE price = ( SELECT MAX(price) FROM hotel_room)

 BEGIN TRANSACTION;

/* Create a table called */
CREATE TABLE hotel(hotel_id integer, Name text, address text, PRIMARY KEY(hotel_id));
CREATE TABLE hotel_room(hotel_room_id integer, hotel_id integer, area integer, price integer,PRIMARY KEY(hotel_room_id),FOREIGN KEY(hotel_id) REFERENCES hotel(hotel_id));

/* Create few records in this table */
INSERT INTO hotel VALUES(1,'Tom1', 'addr');
INSERT INTO hotel VALUES(2,'Tom2', 'addr');
INSERT INTO hotel VALUES(3,'Tom3', 'addr');
INSERT INTO hotel VALUES(4,'Tom4', 'addr');
INSERT INTO hotel_room VALUES(1,1,20,200);
INSERT INTO hotel_room VALUES(2,1,25,250);
INSERT INTO hotel_room VALUES(3,2,26,260);
INSERT INTO hotel_room VALUES(4,2,27,270);
INSERT INTO hotel_room VALUES(5,2,28,280);
INSERT INTO hotel_room VALUES(6,1,29,290);
COMMIT;

/* Display all the records from the table */
SELECT area FROM hotel_room WHERE price = ( SELECT MAX(price) FROM hotel_room)
=end

=begin
users (id, name, email, created_at, updated_at)
posts (id, user_id, title, body, created_at, updated_at)
● Написать запрос который вернет количество записей сделанных каждым
	пользователем и информацию о самой последней записи вот в таком формате:
	user_id, posts_count, last_post_title, last_post_created_at.
● Написать запрос, который возвращает пользователей, у которых больше 3
	статей.

BEGIN TRANSACTION;

/* Create a table called */
CREATE TABLE users(Id integer, Name text, email text, created_at date, updated_at date,PRIMARY KEY(Id));
CREATE TABLE posts(Id integer, users_id integer, title text, created_at date, updated_at date, PRIMARY KEY(Id),FOREIGN KEY(users_id) REFERENCES users(id) );

/* Create few records in this table */
INSERT INTO users VALUES(1,'Tom','@mail',1,1);
INSERT INTO users VALUES(2,'Tom2','@mail',2,2);
INSERT INTO users VALUES(3,'Tom3','@mail',3,3);
INSERT INTO posts VALUES(1,1,'title1','2011-11-11',1);
INSERT INTO posts VALUES(2,1,'title2','2012-2-2',2);
INSERT INTO posts VALUES(3,1,'title3','2013-3-3',3);
INSERT INTO posts VALUES(4,1,'title4','2014-4-4',4);
INSERT INTO posts VALUES(5,2,'title1','2015-5-5',5);
INSERT INTO posts VALUES(6,2,'title2','2016-6-6',6);
INSERT INTO posts VALUES(7,3,'title1','2017-7-7',7);

COMMIT;

SELECT users_id, COUNT(Id) as posts_count, title as last_post_title, MAX(created_at) as last_post_created_at FROM posts GROUP BY users_id;



SELECT users.*, posts.Id FROM users JOIN posts ON users.Id=posts.users_id GROUP BY posts.users_id HAVING COUNT(posts.Id)>3;

=end