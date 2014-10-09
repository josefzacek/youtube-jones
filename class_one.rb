class Square


  def initialize(side_length)
    @side_length = side_length
  end

  def perimeter
    return @side_length * 4
  end

  def area
    return @side_length * @side_length
  end

  def to_s
    "This square has length of #{@side_length}, perimeter of #{perimeter} and area of #{self.area}"
  end

  def draw
    puts '*' * @side_length
    (@side_length - 2).times do
      puts '*' + " " * (@side_length - 2)  + '*'
    end


    puts '*' * @side_length
  end

end

a = Square.new(8)

puts a.perimeter
puts a.area
puts a

a.draw

