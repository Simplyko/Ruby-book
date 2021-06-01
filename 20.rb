# написать метод, который будет возвращать true, если в предложении содержатся все буквы и false если каких-то букв не хватает.
require 'set'

def f(str)
  set = Set.new
  str.each_char do |c|
    set.add(c) if c >= 'a' && c <= 'z'
  end
  set.size == 26
end

puts f('quick brown fox jumps over the lazy dog')
