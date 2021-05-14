=begin
Задание: напишите метод, который выводит на экран пароль, но в виде звездочек.
Например, если пароль “secret”, метод должен вывести “Ваш пароль: ******”.
=end

def secret_password(pass)
	print 'Ваш пароль засекречен:'
	puts '*'*pass.length
end

print 'Введите ваш пароль: '
password = gets.chomp
secret_password(password)
