=begin
Есть предложение, необходимо сосчитать частотность слов и вывести список. 
Например, слово “the” встречается 2 раза, слово “dog” 1 раз и так далее.	

str = 'the quick brown fox jumps over the lazy dog'
arr = str.split(' ')
hh = Hash.new(0)

arr.each do |word|
  hh[word] += 1
end

puts hh.inspect
=end

=begin
Задание: напишите программу, которая считает частотность букв и выводит на экран список букв и их количество в предложении.
=end
str = 'the quick brown fox jumps over the lazy dog'
puts arr = str.split(%r{\s*})

hh = Hash.new(0)
arr.each do |word|
	hh[word] += 1
end

puts hh.inspect