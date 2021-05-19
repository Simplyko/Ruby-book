=begin
rЗадание: напишите “сложный” англо-русский словарь, 
где каждому английскому слову может соответствовать несколько переводов 
(например: cat это “кот”, “кошка”). 	

dict = {
  'cat' => ['кошка', 'кот', 'котяра'],
  'dog' => ['собака', 'песель', 'собакен'],
  'girl' => ['девушка', 'дама', 'госпожа']
}

print 'Введите слово: '
input = gets.chomp

puts "Перевод слова: #{dict[input].join(", ")}"
=end

=begin
Задание: задайте базу данных (хеш) своих контактов. 
Для каждого контакта (фамилия) может быть задано 
три параметра: email, cell_phone (номер моб.телефона), work_phone (номер рабочего телефона). 
Напишите программу, которая будет спрашивать фамилию и выводить на экран контактную информацию.	
=end

contacts = { contact: 
	[{
		last_name: 'r',
		data: 
		{
			email: 'simplyko@mail.ru',
			cell_phone: 88005553535,
			work_phone:	88005553535
		}
	},
	{
		last_name: 'q',
		data: 
		{
			email: 'qqqqqqqqq',
			cell_phone: 88005553535,
			work_phone:	88005553535
		}
	}
	]
}
print "Введите фамилию контакта: "
last_name = gets.chomp

contacts[:contact].each do |elem|
	if elem[:last_name] == last_name
		elem[:data].each_pair {|k,v| puts "#{k}, #{v}"}
	end
end 
