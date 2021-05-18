=begin
Задание: корзина пользователя в Интернет-магазине определена следующим массивом (qty - количество единиц товара, которое пользователь хочет купить, type - тип)
Написать программу, которая выводит на экран цену всех товаров в корзине (total), 
а также сообщает - возможно ли удовлетворить запрос пользователя - набрать все единицы товара, которые есть на складе.
=end

cart = [
  { type: :soccer_ball, qty: 2 },
  { type: :tennis_ball, qty: 3 }
]

inventory = {
  soccer_ball: { available: 2, price_per_item: 100 },
  tennis_ball: { available: 1, price_per_item: 30 },
  golf_ball: { available: 5, price_per_item: 5 }
}

=begin
puts "Сумма товаров в корзине:"
total = 0
cart.each {|h| h.each{|ck,cv| 
		inventory.each { |ik, iv| 
			if cv == ik
				sum = h[:qty]*iv[:price_per_item]
				puts "#{ik} : #{sum}"
				if h[:qty] > iv[:available]
					sum = iv[:available]*iv[:price_per_item]
					puts "#{h[:type]} не хватает на складе, имеется только #{iv[:available]} шт"
				end
				total += sum
			end
		}
	}	
}
puts "Всего стоимость товаров #{total}"

Вывод:
	Сумма товаров в корзине:
	soccer_ball : 200
	tennis_ball : 90
	tennis_ball не хватает на складе, имеется только 1 шт
	Всего стоимость товаров 230
=end
total_price = 0
cart.each do |elem|
  if inventory[elem[:type]] && inventory[elem[:type]][:available] >= elem[:qty]
    elems_price = elem[:qty] * inventory[elem[:type]][:price_per_item]
    puts "#{elem[:type]}: #{elems_price}"
  elsif
    elems_price = inventory[elem[:type]][:available] * inventory[elem[:type]][:price_per_item]
    puts "#{elem[:type]}: #{elems_price}"
    puts "#{elem[:type]} не хватает на складе, имеется только #{inventory[elem[:type]][:available]}"
  end
  total_price += elems_price
end
puts "Всего стоимость товаров #{total_price}"