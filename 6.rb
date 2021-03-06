# Задание: измените программу, чтобы она загадывала число от 1 до 1_000_000 (1 миллиона).
# Чтобы можно было угадать это число, программа должна сравнивать текущий ответ пользователя и искомое число:
# 1) если ответ пользователя больше, то программа должна выводить на экран “Искомое число меньше вашего ответа”;
# 2) иначе “Искомое число больше вашего ответа”.
# Может показаться, что угадать это число невозможно, однако математический расчет показывает,
# что угадать число в этом случае можно не более, чем за 20 попыток.

number = rand(1..100_000)
print 'Привет! Я загадал число от 1 до 1000000, попробуйте угадать: '

loop do
  input = gets.to_i

  if input == number
    puts 'Правильно!'
    exit
  elsif input > number
    print 'Искомое число меньше вашего ответа, попробуйте еще раз: '
  else
    print 'Искомое число больше вашего ответа, попробуйте еще раз: '
  end
end
