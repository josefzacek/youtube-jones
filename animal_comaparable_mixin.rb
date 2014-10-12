class Animal

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

  # overwriting ruby compare method
  def ==(other)
    self.name == other.name && self.color == other.color
  end

  # overwriting ruby plus method
  def +(other)
    return Animal.new(self.name + "-" + other.name, "#{self.color}-#{other.color}")
  end

end

a = Animal.new('Cow', 'pink')
b = Animal.new('Cow', 'pink')


if a == b       #calling ==() method declared in Animal class
  puts 'yes'
else
  puts 'no'
end

#calling to_s method
puts a.to_s

c = Animal.new('Bull', 'blue')
d = Animal.new('Cow', 'pink')


e = c + d #calling +() method declared in Animal class
puts e



