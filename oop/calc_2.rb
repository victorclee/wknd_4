# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

module FancyCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class Mix
  include SimpleCalculator
  include FancyCalculator
end

# Copy your driver code from the previous exercise below:

a = Mix.new.add(4,5)
p a
b = Mix.new.subtract(9,5)
p b
c = Mix.new.multiply(3,31)
p c
d = Mix.new.divide(64,8)
p d
e = Mix.new.square_root(81)
p e