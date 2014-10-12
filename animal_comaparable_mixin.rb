class Animal

  include Comparable  #include module Comparable

  attr_accessor :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end

  def speak
    return "hello my name is #{@name}"
  end

  def identify
    return "my name is #{@name} and I am #{self.class}"
  end

  def to_csv
    return "#{@name},#{@color}"
  end


  def to_s
    return "#{@name}, #{@color}"
  end

  # # overwriting ruby compare method
  # def ==(other)
  #   self.name == other.name && self.color == other.color
  # end

  # use this if Comparable module included
  def <=>(other)
    self.name <=> other.name #&& self.color <=> other.color
  end

  # overwriting ruby plus method
  def +(other)
    return Animal.new(self.name + "-" + other.name, "#{self.color}-#{other.color}")
  end

end

a = Animal.new('Cow', 'pink')
b = Animal.new('Cow', 'pink')


# if a == b       #calling ==() method declared in Animal class
#   puts 'yes'
# else
#   puts 'no'
# end


# when cComparable module included
puts 'dave' <=> 'karin'   # => -1   less than         d is less than k
puts 'zdave' <=> 'karin'  # => 1    greater than      z is greater than k
puts 'karin' <=> 'karin'  # => 0    equal

#calling to_s method
puts a.to_s

c = Animal.new('Bull', 'blue')
d = Animal.new('Cow', 'pink')

puts c < d    # is Bull less than Cow => true
puts c > d    # is Bull greater than Cow => false
puts c == d   # is Bull equal Cow => false
puts c >= d   # is Bull greater than or equal to Cow => false
puts c != d   # is Bull not equal to Cow => true


e = c + d #calling +() method declared in Animal class
puts e


cage = [c,d]
puts cage.max # returns largest value thanks to module comparable
puts cage.min # returns lowest value thanks to module comparable



