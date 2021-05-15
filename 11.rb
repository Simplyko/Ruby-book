=begin
“Битва роботов”. Возьмем 20 роботов и разделим их на 2 команды, в каждой команде по 10. Каждую команду будет представлять отдельный массив размером 10.

Задание: чтобы статистика была более наглядной, добавьте в программу выше вывод двух массивов.

Задание: вместо бинарного значения ноль или единица пусть каждый робот имеет уровень жизни, который выражается целым числом от 1 до 100 
(в самом начале это значение должно быть установлено в 100). Пусть каждая атака отнимает случайную величину жизни у робота от 30 до 100. 
Если уровень жизни ниже или равен нулю, робот считается уничтоженным.  
	
=end

@arr1 = Array.new(10,100)
@arr2 = Array.new(10,100)

def attack(arr)
	sleep 1
	i = rand(0..9)
	if arr[i] > 0
		arr[i] -= rand(30..100)
		if arr[i] > 0
			puts "Робот по индексу #{i} ранен"
		else 
			puts "Робот по индексу #{i} убит"
		end
	else
		puts "Промазали по индексу #{i}"
	end
	sleep 1
end

def victory?
	robots_left1 = @arr1.count {|x| x > 0}
	robots_left2 = @arr2.count {|x| x > 0}

	if robots_left1 == 0
		puts "Команда 2 победила, в команде осталось #{robots_left2} роботов"
		return true
	end

	if robots_left2 == 0
		puts "Команда 1 победила, в команде осталось #{robots_left1} роботов"
		return false
	end

	false
end


def stats
	cnt1 = @arr1.count {|x| x > 1}
	cnt2 = @arr2.count {|x| x > 1}
	puts "1-я команда: #{cnt1} роботов в строю"
	print @arr1
	puts
	puts "2-я команда: #{cnt2} роботов в строю"
	print @arr2
	puts
end

loop do
	puts 'Первая команда наносит удар...'
	attack(@arr2)
	exit if victory?
	stats
	sleep 3
	puts 

	puts 'Вторая команда наносит удар...'
	attack(@arr1)
	exit if victory?
	stats
	sleep 3
	puts 
end
