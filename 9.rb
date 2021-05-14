=begin
Вводные данные: Для закрепления знаний давайте напишем эмулятор судного дня. Машины захватили мир, идет борьба за выживание. 
Кто выживет человечество или машины - покажет судьба. Точнее, генератор случайных чисел.

Задание: реализуйте метод “check_victory?” (сейчас он просто возвращает значение false). В случае победы или поражения необходимо выводить полученный результат на экран.

Задание: посмотрите документацию к "ruby case statements" и замените конструкцию "if...elsif" на "case...when".

Задание: сделать так, чтобы цикл был теоретически бесконечным. Т.е. чтобы равновероятно на свет появлялись люди и машины.
Количество появившихся людей или машин должно равняться количеству погибших людей или машин.
Несмотря на то, что теоретически борьба может быть бесконечной, на практике может наступить ситуация, в которой та или иная сторона выигрывает.
Проверьте программу на практике, попробуйте разные значения `humans` и `machines` (1000, 100, 10).

Задание: улучшите программу, добавьте как минимум еще 3 события, которые могут влиять на результат судного дня.
=end

@humans = 10
@machines = 10

def luck?
	rand(0..1) == 1
end

def boom
	@diff = rand(1..5)
	if luck?
		@machines -= @diff
		puts "#{@diff} машин уничтожено"
	else
		@humans -= @diff
		puts "#{@diff} людей погибло"
	end
end

def born
	if luck?
		@machines += @diff
		puts "#{@diff} машин построено"
	else
		@humans += @diff
		puts "#{@diff} людей рождено"
	end
end

def random_city
	case dice = rand(1..5)
	when 1
		'Москва'
	when 2
		'Лос-Анджелес'
	when 3
		'Пекин'
	when 4
		'Лондон'
	else
		'Сеул'
	end
end

def random_sleep
	sleep rand(0.3..0.4)
end

def stats
	puts "Осталось #{@humans} людей и #{@machines} машин"
end

def event1
	puts "Запущена ракета по городу #{random_city}"
	random_sleep
	boom
end

def event2
	puts "Применено радиоактивное оружее в городе #{random_city}"
	random_sleep
	boom
end

def event3
	puts "Группа солдат прорывает оборону противника в городе #{random_city}"
	random_sleep
	boom
end

def event4
	puts "Долгоносик пожрал урожай в городе #{random_city}"
end

def event5
	puts "Рик случайно повредил город #{random_city}"
end

def event6
	puts "Спутник упал на город #{random_city}"
end

def check_victroy?
	if (@humans == 0) || (@humans < 0)
		puts "Machines WINs: Осталось 0 людей и #{@machines} машин"
		return true
	elsif (@machines == 0) || (@machines < 0) 
		puts "Humans WINs: Осталось #{@humans} людей и 0 машин"
		return true
	end
end

loop do
	if check_victroy?
		exit
	end

	dice = rand(1..6)
	
	case dice
	when 1
		event1
	when 2
		event2
	when 3
		event3
	when 4
		event4
	when 5
		event5
	when 6
		event6
	end
	
	stats
	random_sleep
	born
	random_sleep
	stats
	random_sleep
end