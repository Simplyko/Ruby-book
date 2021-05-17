=begin
Задание: используя инициализированный хеш вида:

```
obj = {
  soccer_ball: 410,
  tennis_ball: 58,
  golf_ball: 45
}
```

Напишите код, который адаптирует этот хеш для условий на Луне. Известно, что вес на луне в 6 раз меньше, чем вес на Земле.

=end
obj = {
	soccer_ball: 410,
	tennis_ball: 58,
	golf_ball: 45
}

moon_obj = obj.transform_values{|value| value * 6}

=begin
Задание: “лунный магазин”. Используя хеш с новым весом из предыдущего задания напишите программу, 
которая для каждого типа спрашивает пользователя какое количество мячей пользователь хотел бы купить в магазине (ввод числа из консоли). 
В конце программа выдает общий вес всех товаров в корзине. Для сравнения программа должна также выдавать общий вес всех товаров, если бы они находились на Земле.
=end

puts 'Добро пожаловать в Лунный магазин, какое количество мячей вы желаете?'
moon_obj.each {|key, value| 
	print "Введите желаемое количество #{key}: "
	moon_obj[key] = value*gets.to_i
}
sum_moon_obj = moon_obj.values.sum
puts "Общий вес всех товаров в корзине на луне: #{sum_moon_obj}"
puts "Общий вес всех товаров в корзине на земле: #{sum_moon_obj/6}"
