=begin
Задание: напишите игру “камень, ножницы, бумага” (`[:rock, :scissors, :paper]`). 
Пользователь делает свой выбор и играет с компьютером.
=end

puts "Chose (R)ock, (S)cissors, (P)aper? "
def rand_comp
	c = rand(0..2)
	case c
	when 0
		c = 'R'
	when 1
		c = 'S'
	when 2
		c = 'P'
	end
end
c = rand_comp

print 'User chose: ' 
u = gets.strip.capitalize
puts "\rComputer chose: #{c}"	

if u == c
	puts 'StandOff'
elsif u == 'R' && c == 'S'
	puts 'User WIN'
elsif u == 'R' && c == 'P'
	puts 'Computer WIN'
elsif u == 'S' && c == 'R'
	puts 'Computer WIN'
elsif u == 'S' && c == 'P'
	puts 'User WIN'
elsif u == 'P' && c == 'R'
	puts 'User WIN'
elsif u == 'P' && c == 'S'
	puts 'User WIN'
end