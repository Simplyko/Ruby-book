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
