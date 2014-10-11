class Animal

  attr_accessor :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end

end


class Tiger < Animal

  def speak
    return 'grrrr'
  end

end



tiger = Animal.new("Tiger", "orange")

tiger_one = Tiger.new('jim', 'pink')

puma = Tiger.new('Tina','black')

puts tiger.inspect

puts tiger_one.inspect

puts tiger_one.speak

puts puma.inspect

puts puma.speak