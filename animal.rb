class Animal

  attr_accessor :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end

end



tiger = Animal.new("Tiger", "orange")


puts tiger.inspect