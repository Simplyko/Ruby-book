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
rescue => exception
	
end

@humans = 10
@machines = 10

def luck?
	rand(0..1) == 1
end

def boom
	diff = rand(1..5)
	if luck?
		@machines -= diff
		puts "#{diff} машин уничтожено"
	else
		@humans -= diff
		puts "#{diff} людей погибло"
	end
end

def random_city
	dice = rand(1..5)
	if dice == 1
		'Москва'
	elsif dice == 2
		'Лос-Анджелес'
	elsif dice == 3
		'Пекин'
	elsif dice == 4
		'Лондон'
	else
		'Сеул'
	end
end

def random_sleep
	sleep rand(0.3..1.5)
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

	dice = rand(1..3)
	
	if dice == 1
		event1
	elsif dice == 2
		event2
	elsif dice == 3
		event3
	end
	
	stats
	random_sleep
end