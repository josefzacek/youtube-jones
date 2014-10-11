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
puts tiger.inspect

tiger_one = Tiger.new('jim', 'pink')
puts tiger_one.inspect
puts tiger_one.speak

puma = Tiger.new('Tina','black')
puts puma.inspect
puts puma.speak