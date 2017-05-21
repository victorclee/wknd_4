# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

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

module WhizBangCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

class Mix
  include SimpleCalculator
  include FancyCalculator
  include WhizBangCalculator
end

# Copy your driver code from the previous exercise and more below:

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
f = Mix.new.hypotenuse(2,6)
p f
g = Mix.new.exponent(6,2)
p g