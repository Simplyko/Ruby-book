=begin 
Задание: напишите класс Monkey (“обезьянка”). В классе должно быть 
1) реализовано два метода: run, stop; 
2) каждый из методов должен менять состояние объекта; 
3) you must expose the state of an object так, чтобы можно было узнать о состоянии класса снаружи, 
но нельзя было его модифицировать (к сожалению, точно перевести на русский язык выражение “expose the state” не получилось. 
Посмотрите перевод слова “expose” в словаре). 
Создайте экземпляр класса Monkey, вызовите методы объекта и проверьте работоспособность программы.

Задание: сделайте так, чтобы при инициализации класса Monkey экземпляру присваивалось случайное состояние.
Создайте массив из десяти обезьянок. Выведите состояние всех элементов массива на экран.
=end

class Monkey
	attr_reader :state

	def initialize
		@state = rand(0..2)
		case @state
			when 0
				@state = :sleep
			when 1
				@state = :runing
			when 2
				@state = :stop
		end
	end

	def run
		@state = :runing
	end

	def stop
		@state = :stop
	end

	def state_monkey
		puts "Monkey state is #{@state}"
	end
end

array = Array.new(10) {Monkey.new}
array.each do |monkey|
	monkey.state_monkey
end