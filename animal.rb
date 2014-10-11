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

end


class Tiger < Animal

  def speak
    #return 'grrrr'
    #return super  #execute my parents methods
    return super + " Grrr"  #execute my parents methods and string defined

  end

end


class Zebra < Animal

  def initialize(name, color, stripes)
    @stripes = stripes
    return super(name, color)
  end

  def speak     # needs to be the same method name
    return super + " Mufassaaa"
  end
end

class Hyena < Animal

end


tiger = Animal.new("Tiger", "orange")
puts tiger.inspect

tiger_one = Tiger.new('jim', 'pink')
puts tiger_one.inspect
puts tiger_one.speak

puma = Tiger.new('Tina','black')
puts puma.inspect
puts puma.speak


puts puma.identify

puts tiger.identify


cathy = Zebra.new('cathy', 'black and white', 5)

puts cathy.inspect

puts cathy.identify

puts cathy.speak


mick = Hyena.new('mick', 'brown')

puts mick.speak
puts mick.identify

